class Report < ActiveRecord::Base
	validates_presence_of :caller_number, :name, :farmer_id, :number_of_infected, :animal_type, :animal_symptoms
  attr_accessible :caller_number, :name, :farmer_id, :number_of_infected, :animal_type, :animal_symptoms
	serialize :animal_symptoms, Hash
	belongs_to :animal_type
end
