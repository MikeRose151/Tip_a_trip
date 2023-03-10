class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    @itinerary = Itinerary.find(params[:itinerary_id])
  end
end
