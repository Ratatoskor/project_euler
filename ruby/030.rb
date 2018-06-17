#DIGIT FIFTH POWERS

=begin


Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

    1634 = 14 + 64 + 34 + 44
    8208 = 84 + 24 + 04 + 84
    9474 = 94 + 44 + 74 + 44

As 1 = 14 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.


=end

# Returns sum of the individual digits**x
def digit_x_power(num, x)
  sum = 0

  num.to_s.split(//).each do |digit|
    sum += digit.to_i**x
  end
  return sum.to_i
end


# Returns any numbers equal to the sum of their digits**x
def sum_dxp(x)
  solutions = []
  (2..(9**x)*(x+1)).each do |num|
    solutions << num if num == digit_x_power(num,x)
  end

  puts solutions.inject(:+)
end


sum_dxp(5)
