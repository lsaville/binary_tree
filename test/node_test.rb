require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < MiniTest::Test
  def test_should_be_able_to_hold_data
    node = Node.new(50)
    expected = 50
    assert_equal expected, node.data
  end

  def test_should_have_left_value
    node = Node.new("data", "something")
    expected = "something"
    assert_equal expected, node.left
  end

  def test_should_have_right_value
    node = Node.new("data", "left", "something")
    expected = "something"
    assert_equal expected, node.right
  end

  def test_should_default_left_and_right_to_nil
  node = Node.new("data")
  assert_nil node.left
  assert_nil node.right
  end

end
