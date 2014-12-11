class ReportsController < ApplicationController
	def create
		report = Report.new()
		report.name = params[:name]
		report.caller_number = params[:caller_number]
		report.farmer_id = params[:farmer_id]
		report.number_of_infected = params[:number_of_infected]
		report.animal_type = AnimalType.find_by_id(params[:animal_type])
		report.animal_symptom = []
		AnimalSymptom.all.each do |s|
			report.animal_symptom.push params[s.name] if params[s.name].to_i == 1
		end                                    
		report.save!
	end
end
