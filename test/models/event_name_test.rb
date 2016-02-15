require_relative '../test_helper'

class EventNameTest < Minitest::Test
  include TestHelpers

  def test_it_is_created_with_the_valid_attributes
    EventName.create(name: "jones")
    assert_equal 1, EventName.count
    EventName.create
    assert_equal 1, EventName.count
  end

  def test_it_has_many_payloads
    EventName.create(name: "jones")
    create_payload
    assert_equal 1, EventName.all.last.payload_requests.count
  end
end
