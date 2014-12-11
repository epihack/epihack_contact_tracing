class AddCodeToSymptom < ActiveRecord::Migration
  def change
  	add_column :symptom_types, :code, :string
  end
end
