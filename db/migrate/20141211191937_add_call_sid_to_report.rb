class AddCallSidToReport < ActiveRecord::Migration
  def change
  	add_column :reports, :call_sid, :string
  end
end
