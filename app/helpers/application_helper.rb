module ApplicationHelper
	def to_symptom_name arr_symptom
		names = []
		arr_symptom.each do |key,value|
			symptom = SymptomType.find_by_code(key)
			names.push symptom.name if symptom
		end 
		names.join(" and ")
 end

 def follow_up_on contact, person, place
  "Call #{person} on #{contact} from #{place}"
 end
end
