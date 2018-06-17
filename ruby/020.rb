#Factorial digit sum
=begin

Problem 20

n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!


=end

#returns factorial of the input number
def factorial(number)
  factorial = 1   #Otherwise, function will multiply by 0

  if number==0
    return 1
  end
  factorial = number*factorial(number-1)

  return factorial
end

#Returns sum of individual digits of the factorial of num
def sum_factorial_digits(num)
  arr_numbers = factorial(num).to_s.split(//)

  sum = 0
    arr_numbers.each do |x|
    sum += x.to_i
  end
  puts sum
end

sum_factorial_digits(100)
