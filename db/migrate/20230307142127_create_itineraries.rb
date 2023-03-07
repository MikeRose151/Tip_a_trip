class CreateItineraries < ActiveRecord::Migration[7.0]
  def change
    create_table :itineraries do |t|
      t.integer :original_itinerary_id
      t.references :user, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :destination
      t.string :title

      t.timestamps
    end
  end
end
