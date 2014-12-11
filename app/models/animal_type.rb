class AnimalType < ActiveRecord::Base
	has_many :report
	validates_uniqueness_of :name, :allow_blank => true
	attr_accessible :name

end