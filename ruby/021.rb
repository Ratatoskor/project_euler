#AMICABLE NUMBERS

=begin
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=end

# Returns an array with proper divisors of the input value num
def proper_divs(num)
  divisors = []

  (1...num).each do |x|
    divisors << x if num%x == 0
  end

  divisors
end

# Checks to see if num1 has an amicable number, it true, it adds both numbers to amicables (array)
def amicable_number?(num1, amicables)
  num1_divs   = proper_divs(num1)
  num2        = num1_divs.inject(:+)
  num2_divs   = proper_divs(num2)
  num_compare = num2_divs.inject(:+)

  if (num1 == num_compare && num1!=num2)
    if !amicables.include?(num1) && !amicables.include?(num2)
      amicables << num1
      amicables << num2
    end
  end

  return
end

# Outputs sum of all amicable numbers up to max (non-inclusive)
def sum_amicables(max)
  amicables = []

  (2...max).each do |x|
    amicable_number?(x, amicables)
  end

  puts amicables.inject(:+)
end

sum_amicables(10000)
