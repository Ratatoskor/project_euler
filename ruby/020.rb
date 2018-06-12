=begin

Problem 20

n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!


=end

  factorial = 1
def factorial(number)

  if number==0
    return 1
  end
  factorial = number*factorial(number-1)

  return factorial
end

result = factorial(100)

arr_numbers = result.to_s.split(//)

sum = 0
arr_numbers.each do |x|
  sum += x.to_i
end

puts sum
