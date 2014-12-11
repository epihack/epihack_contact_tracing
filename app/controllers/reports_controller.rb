class ReportsController < ApplicationController
	def create
		report = Report.new()
		report.caller_number = params[:CallSid]
		report.farmer_id = params[:gp_id]
		report.number_of_infected = params[:affected_animals]
		report.animal_type = AnimalType.find_by_id(params[:animal_species])
		report.number_of_death = params[:number_of_deaths]
		report.animal_symptom = {}
		AnimalSymptom.all.each do |s|
			if params[s.code].to_i == 1
				report.animal_symptom[s.name] = params[s.code].to_i
			end
		end                                    
		if report.save!
			event = Event.create!(:date_reported => DateTime.now())
			EventStatus.create!(:event_id => event.id, :status => "New", :status_date => DateTime.now())
		end
	end
end
