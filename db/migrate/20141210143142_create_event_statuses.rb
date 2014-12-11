class CreateEventStatuses < ActiveRecord::Migration
  def change
    create_table :event_statuses, :primary_key => :event_status_id do |t|
      t.integer :event_id
      t.string :status
      t.timestamps
    end
  end
end
