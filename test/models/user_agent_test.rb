require_relative '../test_helper'

class UserAgentTest < Minitest::Test
  include TestHelpers

  def test_it_must_have_the_valid_attributes
    UserAgent.create(os: "Mac", browser: "Chrome")
    assert_equal 1, UserAgent.count
    UserAgent.create(os: "hp")
    assert_equal 1, UserAgent.count
  end
end
