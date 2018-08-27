class Triangle
  attr_accessor :left, :right, :middle

  def initialize(left, right, middle)
    @left = left
    @right = right
    @middle = middle
  end

  def kind
  end
  class TriangleError < StandardError

  end
end
