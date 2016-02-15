class ResolutionSize < ActiveRecord::Base
  has_many :payload_requests
  validates :resolution_height, presence: true
  validates :resolution_width, presence: true
end
