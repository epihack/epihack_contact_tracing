class RemoveCallerNumberFromReport < ActiveRecord::Migration
  def change
  	remove_column :reports, :caller_number
  end
end
