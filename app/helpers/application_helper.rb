module ApplicationHelper
	def to_symptom_name arr_symptom
		names = []
		arr_symptom.each do |s|
			symptom = SymptomType.find_by_id(s)
			names.push symptom.name if symptom
		end 
		names.join(" and ")
	end	
end
