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


#Using mathematical formulas for sum of numbers and sum of squares



def sum_square_diff(number)

  sum = (number*(number+1)/2)
  squared = (number*(number+1)*(2*number+1)/6)

  return sum*sum-squared
end

puts sum_square_diff(1000)
