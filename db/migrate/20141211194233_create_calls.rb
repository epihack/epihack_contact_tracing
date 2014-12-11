class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :call_sid
      t.string :from

      t.timestamps
    end
  end
end
