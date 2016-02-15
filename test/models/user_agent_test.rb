require_relative '../test_helper'

class UserAgentTest < Minitest::Test
  include TestHelpers

  def test_it_must_have_the_valid_attributes
    UserAgent.create(os: "Mac", browser: "Chrome")
    assert_equal 1, UserAgent.count
    UserAgent.create(os: "hp")
    assert_equal 1, UserAgent.count
  end

  def test_it_has_many_payloads
    UserAgent.create(os: "Mac", browser: "Chrome")
    create_payload
    assert_equal 1, UserAgent.all.first.payload_requests.count
  end
end
