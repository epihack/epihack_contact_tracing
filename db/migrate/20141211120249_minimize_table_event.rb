class MinimizeTableEvent < ActiveRecord::Migration
  def change
  	remove_column :events, :location_id
  	remove_column :events, :location_type
  	remove_column :events, :description
  end
end
