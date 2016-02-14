class CreateUpdateEventName < ActiveRecord::Migration
  def change
    change_table :payload_requests do |t|
      t.string :event_name
    end
  end
end
