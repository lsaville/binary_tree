require './lib/binary_search_tree'
require 'minitest/autorun'
require 'minitest/pride'

class BinarySearchTreeTest < MiniTest::Test

  def test_insert_makes_root_node
    tree = BinarySearchTree.new

    tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal tree.root.rating, 61
    assert_equal tree.root.title, "Bill & Ted's Excellent Adventure"
  end

  def test_inserts_after_root_to_left
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    assert_equal tree.root.left.rating, 16
    assert_equal tree.root.left.title, "Johnny English"
  end

  def test_inserts_after_root_to_right
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")

    assert_equal tree.root.right.rating, 92
    assert_equal tree.root.right.title, "Sharknado 3"
  end

  def test_does_it_with_unordered_input
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    tree.insert(98, "Animals United")

    assert_equal 50, tree.root.left.right.rating
    assert_equal 98, tree.root.right.right.rating
  end

  def test_insert_returns_depth
    tree = BinarySearchTree.new
    return_val = tree.insert(61, "Bill & Ted's Excellent Adventure")

    assert_equal 0, return_val

    return_val = tree.insert(16, "Johnny English")

    assert_equal 1, return_val

    return_val = tree.insert(92, "Sharknado 3")

    assert_equal 1, return_val

    return_val = tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 2, return_val
  end


  def test_for_include
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    return_val = tree.include?(16)

    assert return_val

    return_val = tree.include?(72)

    refute return_val
  end

  def test_for_depth_method
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 1, tree.depth_of(92)
    assert_equal 2, tree.depth_of(50)
  end

end
