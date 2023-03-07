class ItinerariesController < ApplicationController
  def show
  end

  def index
    @itineraries = Itinerary.all
  end

  def create
  end

  def new
    @itinerary = Itinerary.new
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
    @itinerary.public = true
  end

  def update
    
  end
end
