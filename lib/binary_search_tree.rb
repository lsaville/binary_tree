require_relative 'node'

class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(rating, title)
    counter = 0
    node = Node.new(rating, title)
    if @root.nil?
      @root = node
      counter
    else
      current = @root

      until current.nil?
        counter += 1
        if node.rating < current.rating
          if current.left.nil?  #If I were better I could chunk this to a method
            current.left = node
            return counter
          else
            current = current.left
          end
        elsif node.rating > current.rating
          if current.right.nil?
            current.right = node
            return counter
          else
            current = current.right
          end
        end
      end
    end
  end


  def include?(rating)
    current = @root
    until current.nil?
      if rating == current.rating
        return true
      elsif rating < current.rating
        current = current.left
      elsif rating > current.rating
        current = current.right
      end
    end
    if current.nil?
      false
    end
  end

  def depth_of(rating)
    current = @root
    counter = 0
    until current.nil?
      if rating == current.rating
        return counter
      elsif rating < current.rating
        current = current.left
        counter += 1
      elsif rating > current.rating
        current = current.right
        counter += 1
      end
    end
    if current.nil?
      "Not in tree."
    end
  end

  def max
    current = @root
    until current.nil?
# require "pry"; binding.pry
      if current.right.nil?
        return result = {current.title=>current.rating}
        break
        # require "pry"; binding.pry
      else
        current = current.right
        # require "pry"; binding.pry
      end
    end
  end

  def min
    current = @root
    until current.nil?
# require "pry"; binding.pry
      if current.left.nil?
        return result = {current.title=>current.rating}
        break
        # require "pry"; binding.pry
      else
        current = current.left
        # require "pry"; binding.pry
      end
    end
  end

end
