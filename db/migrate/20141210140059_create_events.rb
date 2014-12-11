class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events, :primary_key => :event_id do |t|
      t.datetime :date_reported
      t.string :description
      t.integer :location
      t.string :location_type
      t.timestamps
    end
  end
end
