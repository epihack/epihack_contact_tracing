module EventHelper
 def get_possible_statuses(status)

  case status.downcase
   when "new"
    result =  [["Investigating","Investigating"], ["Resolved", "Resolved"]]
   when "investigating"
    result = [["Resolved", "Resolved"]]
  end
 end
end
