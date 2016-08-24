

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
