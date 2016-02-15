require_relative '../test_helper'

class ResolutionSizeTest < Minitest::Test
  include TestHelpers

  def test_it_is_created_with_the_valid_attributes
    ResolutionSize.create(resolution_height: "28", resolution_width: "40")
    assert_equal 1, ResolutionSize.count
    ResolutionSize.create
    assert_equal 1, ResolutionSize.count
  end

  def test_it_has_many_payloads
    create_payload
    ResolutionSize.create(resolution_height: "28", resolution_width: "40")
    assert_equal 1, ResolutionSize.all.last.payload_requests.count
  end
end
