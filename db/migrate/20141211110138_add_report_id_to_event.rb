class AddReportIdToEvent < ActiveRecord::Migration
  def change
  	add_column :events, :report_id, :integer, references: :reportes
  end
end
