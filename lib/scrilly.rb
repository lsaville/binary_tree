current = @root
counter = 0
until current.nil?
  if current.right.nil?
    max = {current.title=>current.rating}
  else
    current = current.right
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


  current = @root
  until current.nil? #this is the searching
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








        current.left = node
        return counter
        break
      else
        current = current.left
      end
    elsif node.rating > current.rating
  # require "pry"; binding.pry
      if current.right.nil?
        current.right = node
        return counter
        break
      else
        current = current.right
      end
    end
  end
