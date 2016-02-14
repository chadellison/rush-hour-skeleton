class CreateUpdatePayloadRequests < ActiveRecord::Migration
  def change
    change_table :payload_requests do |t|
      t.remove  :requestedAt
      t.remove  :respondedIn
      t.remove  :referredBy
      t.remove  :requestType
      t.remove  :eventName
      t.remove  :userAgent
      t.remove :resolutionWidth
      t.remove :resolutionHeight
      t.string :requested_at
      t.string :responded_in
      t.string :referred_by
      t.string :request_type
      t.string  :user_agent
      t.integer :resolution_width
      t.integer :resolution_height
    end
  end
end
