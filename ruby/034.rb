#DIGIT FACTORIALS

=begin

145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.

=end

@cache = {0 => 1, 1 =>1}
# Returns factorial of input @ caches each instance to speed up
def factorial(n)
  return @cache[n] if @cache[n]
  @cache[n] = n*factorial(n-1)
end


#Takes in a number, and returns the sum of the factorial of its digits
def digit_factorial_sum(num)
  sum = 0
  num.to_s.split(//).each do |digit|
    sum += factorial(digit.to_i)
  end
  return sum
end


#Checks up to max to see if digit_factorial_sum == num
def digit_factorial_equal(max)
  solutions = []
  (3..max).each do |num|
    solutions << num if num == digit_factorial_sum(num)
  end
  puts solutions.inject(:+)
end

digit_factorial_equal(2540000)
