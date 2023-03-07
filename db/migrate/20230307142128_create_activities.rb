class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.text :description
      t.float :lat
      t.float :long
      t.integer :duration
      t.integer :cost
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
