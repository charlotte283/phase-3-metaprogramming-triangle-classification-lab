class Triangle
  # write code here
attr_reader :l1, :l2, :l3

def initialize(l1, l2, l3)
  @l1=l1
  @l2=l2
  @l3=l3
end

def kind
  validate_triangle
  if l1 == l2 && l2 == l3
    :equilateral
  elsif l1 == l2 || l2== l3 || l1 == l3
    :isosceles
  else
    :scalene
  end
end

def side_greater_zero
  if l1> 0 && l2 > 0 && l3> 0
    true
  else
    false
  end
end

def triangle_inequality
  sum1 = [l1, l2].sum
  sum2 = [l2, l3].sum
  sum3 = [l3, l1].sum

  if sum1 > l3 && sum2 > l1 && sum3 > l2
    true
  else
    false
  end
end

def validate_triangle
  raise TriangleError unless triangle_inequality == true && side_greater_zero == true
end
class TriangleError < StandardError
 
end
end
