class ItinerariesController < ApplicationController
  def show
    @itinerary = Itinerary.find(params[:id])
    @user = current_user
    @favourites = []
    @favourites << Favourite.find_by_user_id(current_user)
    @favourites = @favourites.map do |favourite|
      Activity.find_by_id(favourite.activity_id)
    end

    @itinerary_activities = []
    @itinerary_activities << ItineraryActivity.find_by_itinerary_id(params[:id])
    @itinerary_activities = @itinerary_activities.map do |activity|
      Activity.find_by_id(activity.activity_id)
    end


     

  end

  def index
    @itineraries = Itinerary.all
  end


  def create

    if params[:itineraries_id].nil?
      @itinerary = Itinerary.new(itinerary_params)
      @itinerary.user = current_user
      if @itinerary.save
        redirect_to itineraries_path
      else
        render :new, status: :unprocessable_entity
      end
    else
      # @itinerary =
    end
  end


  #
  #   if itinerary_params.user
  #       # do this
  #       @itinerary.original_itinerary_id =
  #   else
  #     # do this
  #   end
  #
  #   redirect_to itineraries_path

  # end

  def new
    @itinerary = Itinerary.new
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
    @itinerary.public == true
  end

  def update


  end

  private
  def itinerary_params
    params.require(:itinerary).permit(:start_date, :end_date, :destination, :title, :photo)

  end




end
