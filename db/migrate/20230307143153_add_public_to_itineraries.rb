class AddPublicToItineraries < ActiveRecord::Migration[7.0]
  def change
    add_column :itineraries, :public, :boolean , default: false
  end
end
