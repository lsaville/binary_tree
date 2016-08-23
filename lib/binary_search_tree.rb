require_relative 'node'

class Tree
  attr_reader :root_value
  def initialize(root_value)
    @root_value = root_value
  end

end
