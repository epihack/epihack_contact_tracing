class AddNumberOfDeathToReport < ActiveRecord::Migration
  def change
  	add_column :reports, :number_of_death, :integer
  end
end
