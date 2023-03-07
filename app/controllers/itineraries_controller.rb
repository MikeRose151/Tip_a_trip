class ItinerariesController < ApplicationController
  def show
    @itinerary = Itinerary.find(params[:id])
    @favourites = @itinerary.favourites # activities that might become part of the itinerary
    @activities = @itinerary.itinerary_activities # activities that are part of the itinerary
  end

  def index
    @itineraries = Itinerary.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end
end
