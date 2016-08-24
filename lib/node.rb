class Node
  attr_reader :rating, :title
  attr_accessor :left, :right 

  def initialize(rating, title, left=nil, right=nil)
    @rating = rating
    @title = title
    @left = left
    @right = right
  end

end
