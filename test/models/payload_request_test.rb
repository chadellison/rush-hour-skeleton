require_relative '../test_helper'

class PayloadRequestTest < Minitest::Test
  include TestHelpers
  def test_it_has_all_the_correct_fields
    PayloadRequest.create(url_id: 2, requested_at: "10:00", responded_in: "37", referred_by: "social login", request_type: "get", parameters: "params", event_name_id: 23, user_agent_id: 23, resolution_size_id: 40, ip_id: "12723232")
    assert_equal 1, PayloadRequest.count
    PayloadRequest.create(url_id: 34)
    assert_equal 1, PayloadRequest.count
  end

  def test_average_response_time
    create_payload(5)
    assert_equal 5, PayloadRequest.count
    assert_equal 41, PayloadRequest.average_response_time
  end

  def test_max_response_time
    create_payload(5)
    assert_equal 45, PayloadRequest.max_response_time
  end
end
