class Triangle
  attr_accessor :left, :right, :middle

  def initialize(left, right, middle)
    @left = left
    @right = right
    @middle = middle
  end

  def kind
    if left == 0 || right == 0 || middle == 0 || left < 0 || right < 0 || middle < 0 || (left + right) > middle
      raise TriangleError
    elsif left == right && right == middle
      return :equilateral
    elsif left != right && right == middle || left == right && right != middle || left == middle && right != middle
      return :isosceles
    elsif left != right && right != middle
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a triangle!"
    end
  end

end
