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
    elsif left != right && right == middle || left == right && right != middle || left == middle && right != middle
      return :isosceles
    elsif left != right && right != middle
      return :scalene
    elsif left == 0
      raise TriangleError
    end
  end
  class TriangleError < StandardError
  end
end
