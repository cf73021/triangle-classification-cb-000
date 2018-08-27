class Triangle
  attr_accessor :left, :right, :middle

  def initialize(left, right, middle)
    @left = left
    @right = right
    @middle = middle
  end

  def kind
    if left == right && right == middle
      return :equilateral
    end
  end
  class TriangleError < StandardError

  end
end
