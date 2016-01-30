require 'test_helper'

class FlagLayerTest < ActiveSupport::TestCase
  test "specify sortorder when attached to a flag" do
    flag = Flag.create
    layer = FlagLayer.new(:flag => flag)
    layer.save
    assert_equal(layer.sortorder, 0)
    layer2 = FlagLayer.new(:flag => flag)
    layer2.save
    assert_equal(layer2.sortorder, 1)
  end

  test "the base layer always has sort order 0" do
    flag = Flag.create
    layer = FlagLayer.new(:flag => flag)
    layer.save
    assert_equal(layer.sortorder, 0)
    layer2 = FlagLayer.new(:flag => flag)
    layer2.save
    assert_equal(layer2.sortorder, 1)

  end
end
