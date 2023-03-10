class AddDestinationRefToActivities < ActiveRecord::Migration[7.0]
  def change
    add_reference :activities, :destination, foreign_key: true
  end
end
