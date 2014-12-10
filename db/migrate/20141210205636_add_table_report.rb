class AddTableReport < ActiveRecord::Migration
  def change
  	create_table :reports do |t|
      t.string :caller_number
      t.string :name
      t.string :farmer_id
      t.integer :number_of_infected
      t.references :animal_type
      t.text :animal_symptoms
      t.timestamps
    end
  end
end
