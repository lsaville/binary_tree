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
    1
  end

end




# def insert(rating, title)
#   if @root_value == nil
#     @root_value = Node.new(rating, title)
#   else
#     insert_in_branches(rating, title)
#   end
# end

# passing the new node = Node.new
# node.rating
# current = @root_value
# if node.rating < current
#    if nil, assign node = current.left
#   else current = current.left
#   insert(current)
# if >
#   current = current.right


# node = Node.new(rating, title)
# until current == nil
#   if node.rating < current.rating
#     current = current.left
#   elsif node.rating > current.rating
#     current = current.right


    # if node.rating < current.rating
    #   if current.left == nil
    #     current.left = node
    #   else
    #     current.left = current
    #     insert_in_branches(rating, title)
    #   end
    # elsif node.rating > current.rating
    #   if current.right == nil
    #     current.right = node
    #   else
    #     current.right = current
    #     insert_in_branches(rating, title)
    #   end
    # end
