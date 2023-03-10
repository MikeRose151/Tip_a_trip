class ItineraryActivitiesController < ApplicationController
  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @activity = Favourite.find(params[:activity_id])
    @itinerary_activity = ItineraryActivity.new

    @itinerary_activity.itinerary_id = @itinerary.id
    @itinerary_activity.activity_id = @activity.id

    if @itinerary_activity.save
      redirect_to edit_itinerary_path(@itinerary)
    else
      render edit_itinerary_path(@itinerary)
    end
  end
end
