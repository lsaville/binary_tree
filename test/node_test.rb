require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < MiniTest::Test
  def test_it_takes_rating
    node = Node.new(51, "Bill and Ted's Adventure")
    rating = 51
    title = "Bill and Ted's Adventure"

    assert_equal rating, node.rating
    assert_equal title, node.title
  end

  def test_should_have_left_value
    node = Node.new(51, "Bill and Ted's Adventure")
    expected = nil

    assert_equal expected, node.left
  end

  def test_should_have_right_value
    node = Node.new(51, "Bill and Ted's Adventure")
    expected = nil

    assert_equal expected, node.right
  end

end
