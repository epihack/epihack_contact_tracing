class Location < ActiveRecord::Base
 attr_accessible :name
 def get_name
  # method to return name of location
  self.name
 end

 def get_location(id)
  #method to query resource map and get details

 end

 def get_nearby_locations(location)

 end
end
