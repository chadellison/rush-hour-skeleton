class UpdateRequestPayloadWithForeignKeys < ActiveRecord::Migration
  def change
    change_table :payload_requests do |t|
      t.remove :url
      t.remove :ip
      t.remove :user_agent
      t.remove :resolution_width
      t.remove :resolution_height
      t.remove :event_name
      t.integer :url_id
      t.integer :ip_id
      t.integer :user_agent_id
      t.integer :resolution_size_id
      t.integer :event_name_id
    end
  end
end
