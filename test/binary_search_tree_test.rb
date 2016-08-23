require './lib/binary_search_tree'
require 'minitest/autorun'
require 'minitest/pride'

class BinarySearchTreeTest < MiniTest::Test
  def test_tree_has_root_value
    tree = Tree.new("first_node")
    expected = "first_node"

    assert_equal expected, tree.root_value
  end

  def test_root_value_should_draw_on_node
    tree = Tree.new(Node.new(50))
    expected = 50
    assert_equal expected, tree.root_value.data
  end

  def test_node_should_have_leaves
    assert_equal
  end

end
