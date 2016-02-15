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
    create_payload
    assert_equal 1, Ip.all.last.payload_requests.count
  end
end
