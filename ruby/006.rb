# Sum square difference

=begin



The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

#Using mathmatical formulas:

# sum of squares of natural numbers = (n*(n+1)*(2*n +1)/6)
# sum of natural numbers = n*(n+1)/2


def sum_square_diff(n)

  sum_square = (n*(n+1)*(2*n +1)/6)
  sum = n*(n+1)/2

  return sum*sum - sum_square
end

puts sum_square_diff(100)




#Original solution:

=begin

def sum_of_squares(number)
  if number == 1
    return 1
  end

  number = number**2+sum_of_squares(number-1)
  return number
end

def sum_of_nums(number)
  if number ==1
    return 1
  end

  number = number + sum_of_nums(number-1)
  return number
end

def sum_square_diff(number)
  return ((sum_of_nums(number))**2 - sum_of_squares(number))
end

puts sum_square_diff(1000)
=end
