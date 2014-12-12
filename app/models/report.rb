class Report < ActiveRecord::Base
	validates_presence_of :call_sid, :farmer_id, :number_of_infected, :animal_symptoms
  attr_accessible  :call_sid, :farmer_id, :number_of_infected, :animal_type, :animal_symptoms, :number_of_death
	serialize :animal_symptoms, Hash
	belongs_to :animal_type
	has_many :events
end
