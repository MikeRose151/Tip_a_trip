class ItinerariesController < ApplicationController
  def show
    @itinerary = Itinerary.find(params[:id])
    @favourites = @itinerary.favourites # activities that might become part of the itinerary
    @activities = @itinerary.itinerary_activities # activities that are part of the itinerary
  end

  def index
    @itineraries = Itinerary.all
  end

  # def create
  #   @itinerary = Itinerary.new(itinerary_params)
  #   if itinerary_params.user
  #       # do this
  #       @itinerary.original_itinerary_id =
  #   else
  #     # do this
  #   end
  #   @itinerary.user = current_user
  #   @itinerary.save
  #   redirect_to itineraries_path
  # end

  def new
    @itinerary = Itinerary.new
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
    @itinerary.public = true
  end

  def update

  end

  # private

  # def itinerary_params
  #   params.require(:itinerary).permit(:start_date, :end_date, :destination, :title, :photo)
  # end

end
