module ApplicationHelper
	def to_symptom_name arr_symptom
		names = []
		arr_symptom.each do |key,value|
			symptom = SymptomType.find_by_code(key)
			names.push symptom.name if symptom
		end 
		names.join(" and ")
	end	
end
