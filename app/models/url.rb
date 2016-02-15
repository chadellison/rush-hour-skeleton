class Url < ActiveRecord::Base
  has_many :payload_requests
  validates :route, presence: true
end
