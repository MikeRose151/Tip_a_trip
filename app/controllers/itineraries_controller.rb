class ItinerariesController < ApplicationController
  def show
    @itinerary = Itinerary.find(params[:id])

    @all_itinerary_activities = ItineraryActivity.all
    @itinerary_activities = []
    @all_itinerary_activities.each do |itinerary_activity|
      @itinerary_activities << itinerary_activity if itinerary_activity.itinerary == @itinerary
    end
  end

  def index
    @itineraries = Itinerary.all
  end

  def create
    if params[:original_itinerary_id].nil?
      # this happens when creating brand new itinerary
      @itinerary = Itinerary.new(itinerary_params)
      @itinerary.user = current_user
      # @itinerary.original_itinerary_id = @itinerary.id
      if @itinerary.save!
        redirect_to edit_itinerary_path(@itinerary)
      else
        render :new, status: :unprocessable_entity
      end
    else
      # this happens when stealing an existing itenerary
      @original_itinerary = Itinerary.find(params[:original_itinerary_id])
      @itinerary = Itinerary.new
      @itinerary.original_itinerary_id = @original_itinerary.id
      @itinerary.user = current_user
      @itinerary.destination = @original_itinerary.destination
      @itinerary.title = @original_itinerary.title
      @itinerary.start_date = params[:start_date].to_date
      @days_duration = (@original_itinerary.end_date - @original_itinerary.start_date).to_i
      @itinerary.end_date = @itinerary.start_date + @days_duration
      if @itinerary.save!
        redirect_to edit_itinerary_path(@itinerary)
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def new
    @itinerary = Itinerary.new
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
    @user = current_user
    @all_favourites = Favourite.all
    @favourites = []
    @all_favourites.each do |favourite|
      @favourites << favourite if favourite.user == current_user && favourite.activity.destination == @itinerary.destination
    end
    @itinerary_activities = @itinerary.activities

    @all_itinerary_activities = ItineraryActivity.all
    @itinerary_activities = []
    @all_itinerary_activities.each do |itinerary_activity|
      @itinerary_activities << itinerary_activity if itinerary_activity.itinerary == @itinerary
    end
    # @itinerary_activities = []
    # @itinerary_activities << ItineraryActivity.find_by_itinerary_id(params[:id])
    # @itinerary_activities = @itinerary_activities.map do |activity|
    #   Activity.find_by_id(activity&.activity_id)
    # end
    # some of the above logic might need to live in the activities controller
  end

  def update
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:start_date, :end_date, :destination, :title)
  end

  def steal_itinerary_params
    params.require(:itinerary).permit(:start_date)
  end
end
