class ReportsController < ApplicationController
	def create
		report = Report.new()
		report.call_sid = params[:CallSid] 
		report.farmer_id = params[:gp_id]
		report.number_of_infected = params[:affected_animals]
		report.animal_type = AnimalType.find_by_id((params[:animal_species].to_i - 1))
		report.number_of_death = params[:number_of_deaths]
		report.animal_symptoms = {}
		SymptomType.all.each do |s|
			if params[s.code].to_i == 1
				report.animal_symptoms[s.code] = params[s.code].to_i
			end
		end                                    
		if report.save!
			event = Event.create!(:date_reported => DateTime.now(), :report_id => report.id)
			EventStatus.create!(:event_id => event.id, :status => "New", :status_date => DateTime.now())
		end
	end
end
