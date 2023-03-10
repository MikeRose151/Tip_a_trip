class AddDestinationRefToItineraries < ActiveRecord::Migration[7.0]
  def change
    add_reference :itineraries, :destination, foreign_key: true
  end
end
