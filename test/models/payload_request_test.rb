require_relative '../test_helper'

class PayloadRequestTest < Minitest::Test
  include TestHelpers
  def test_it_has_all_the_correct_fields
    PayloadRequest.create(url: "jones.com", requested_at: "10:00", responded_in: "37", referred_by: "social login", request_type: "get", parameters: "params", event_name: "some name", user_agent: "chrome and mac", resolution_width: 50, resolution_height: 40, ip: "12723232")
    assert_equal 1, PayloadRequest.count
    PayloadRequest.create(url: "jones.com")
    assert_equal 1, PayloadRequest.count
  end
end
