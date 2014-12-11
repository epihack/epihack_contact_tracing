class SymptomType < ActiveRecord::Base
	validates_uniqueness_of :name, :allow_blank => true
	attr_accessible :name

end