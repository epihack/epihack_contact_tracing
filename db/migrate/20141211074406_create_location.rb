class CreateLocation < ActiveRecord::Migration
  def change
    create_table :locations, :primary_key => :location_id do |t|
     t.string :name
     t.timestamp
    end
  end
end
