class PayloadRequest < ActiveRecord::Base
  belongs_to :url
  belongs_to :ip
  validates :url_id, presence: true
  validates :parameters, presence: true
  validates :ip_id, presence: true
  validates :requested_at, presence: true
  validates :responded_in, presence: true
  validates :referred_by, presence: true
  validates :request_type, presence: true
  validates :user_agent_id, presence: true
  validates :resolution_size_id, presence: true
  validates :event_name_id, presence: true
end
