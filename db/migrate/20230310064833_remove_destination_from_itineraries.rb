class RemoveDestinationFromItineraries < ActiveRecord::Migration[7.0]
  def change
    remove_column :itineraries, :destination, :string
  end
end
