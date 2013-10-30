require 'test_helper'

class UnkoPositionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @ary = []
  end

  def test_empty?
    assert(@ary.empty?)
  end

  def test_size
    assert_equal(0, @ary.size)
  end

  def teardown
    @ary = nil
  end
end
