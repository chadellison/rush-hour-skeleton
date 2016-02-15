require_relative '../test_helper'

class IpTest < Minitest::Test
  include TestHelpers

  def test_it_is_created_with_the_valid_attributes
    Ip.create(address: 127342234)
    assert_equal 1, Ip.count
    Ip.create
    assert_equal 1, Ip.count
  end

  def test_it_has_the_correct_relationship_with_payload_requests
    Ip.create(address: "1279393")
    PayloadRequest.create(url_id: 1, requested_at: "10:00", responded_in: "37", referred_by: "social login", request_type: "get", parameters: "params", event_name_id: 23, user_agent_id: 23, resolution_size_id: 40, ip_id: 1)
    assert_equal 1, Ip.all.last.payload_requests.count
  end
end
