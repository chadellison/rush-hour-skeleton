require_relative "../test_helper"

class UrlTest < Minitest::Test
  include TestHelpers

  def test_it_must_have_the_correct_attributes
    Url.create(route: "jones.com")
    assert_equal 1, Url.count
    Url.create
    assert_equal 1, Url.count
  end

  def test_it_returns_all_payloads_associated_with_that_object
    Url.create(route: "jones.edu")
    assert_equal 0, Url.all.last.payload_requests.count
    PayloadRequest.create(url_id: 1, requested_at: "10:00", responded_in: "37", referred_by: "social login", request_type: "get", parameters: "params", event_name_id: 23, user_agent_id: 23, resolution_size_id: 40, ip_id: "12723232")
    assert_equal 1, Url.all.last.payload_requests.count
  end
end
