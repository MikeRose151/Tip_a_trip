class ItinerariesController < ApplicationController
  def show
    @itinerary = Itinerary.find(params[:id])
    @original_itinerary = Itinerary.find(@itinerary.original_itinerary_id)
    @itinerary_duration = (@itinerary.end_date - @itinerary.start_date).to_i + 1
    @all_itinerary_activities = ItineraryActivity.all
    @itinerary_activities = []
    @all_itinerary_activities.each do |itinerary_activity|
      @itinerary_activities << itinerary_activity if itinerary_activity.itinerary == @itinerary
    end
  end

  def index
    if params[:query].present?
      sql_query = <<~SQL
        destinations.city ILIKE :query
      SQL
      @itineraries = Itinerary.joins(:destination).where(sql_query, query: "%#{params[:query]}%")
    else
      @itineraries = Itinerary.all
      @counter_tips = 0
      @itineraries.each do |itn|
        @counter_tips += 1 if itn.user == current_user
      end
      @counter_trips = 0
      @itineraries.each do |itn|
        original_itn = Itinerary.find(itn.original_itinerary_id)
        @counter_trips += 1 if (itn.user == current_user) && (original_itn.user == current_user)
      end
      @counter_trips_tipped = 0
      @itineraries.each do |itn|
        original_itn = Itinerary.find(itn.original_itinerary_id)
        @counter_trips_tipped += 1 if original_itn.user == current_user
      end
    end
  end

  def new
    @itinerary = Itinerary.new
    @destinations = Destination.all
    @destination_cities = @destinations.map(&:city)
  end


  def create
    if params[:original_itinerary_id].nil?
      # this happens when creating brand new itinerary
      @itinerary = Itinerary.new(itinerary_params)
      @destination = Destination.find_by(city: params[:itinerary][:destination])
      @itinerary.destination_id = @destination.id
      @itinerary.user = current_user
      if @itinerary.save!
        @itinerary.original_itinerary_id = @itinerary.id
        if @itinerary.save!
          redirect_to edit_itinerary_path(@itinerary)
        else
          render :new, status: :unprocessable_entity
        end
      else
        render :new, status: :unprocessable_entity
      end
    else
      # this happens when stealing an existing itinerary
      @original_itinerary = Itinerary.find(params[:original_itinerary_id])
      @itinerary = Itinerary.new
      @itinerary.original_itinerary_id = @original_itinerary.original_itinerary_id
      @itinerary.user = current_user
      @itinerary.destination = @original_itinerary.destination
      @itinerary.title = @original_itinerary.title
      @itinerary.start_date = params[:start_date].to_date
      @days_duration = (@original_itinerary.end_date - @original_itinerary.start_date).to_i
      @itinerary.end_date = @itinerary.start_date + @days_duration
      @itinerary.activities = @original_itinerary.activities
      if @itinerary.save!
        redirect_to user_itineraries_path(current_user)
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
    @original_itinerary = Itinerary.find(@itinerary.original_itinerary_id)
    @itinerary_duration = (@itinerary.end_date - @itinerary.start_date).to_i + 1
    @user = current_user
    counter = 0
    @all_favourites = Favourite.all
    @favourites = []

    @all_favourites.each do |favourite|
      if favourite.user == current_user && favourite.activity.destination == @itinerary.destination

      # counter += favourite.activity_id.duration
        @favourites << favourite if counter <= 360
      end
    end
    @itinerary_activities = @itinerary.activities

    @all_itinerary_activities = ItineraryActivity.all
    @itinerary_activities = []
    @all_itinerary_activities.each do |itinerary_activity|
      if itinerary_activity.itinerary == @itinerary
        # counter += itinerary_activity.activity.duration
        @itinerary_activities << itinerary_activity if counter <= 360
      end
    end

    # @itinerary_activities = []
    # @itinerary_activities << ItineraryActivity.find_by_itinerary_id(params[:id])
    # @itinerary_activities = @itinerary_activities.map do |activity|
    #   Activity.find_by_id(activity&.activity_id)
    # end
    # some of the above logic might need to live in the activities controller
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    # raise
    if @itinerary.public == true
      @itinerary.public = false
      @itinerary.save
    else
      @itinerary.public = true
      @itinerary.save
    end
      # @itinerary.update(publish_params)
    redirect_to action: "edit", id: params[:id]
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:start_date, :end_date, :title)
  end

  def steal_itinerary_params
    params.require(:itinerary).permit(:start_date)
  end

  def publish_params
    params.require(:itinerary).permit(:public)
  end

end
