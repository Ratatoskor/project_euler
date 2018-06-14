
=begin
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=end
ARR=[]
def proper_divisors(num)
  divisors = []
    if num==1
      return divisors
    end
  (1...num).each do |x|
    if num%x == 0
      divisors << x
    end
  end

  return divisors
end

#Takes one number, finds sum of proper divisors, and checks to see if that number is amicable
=begin
def amicable_numbers?(num1, num2)
  num1_divisors = proper_divisors(num1)
  num2_divisors = proper_divisors(num2)

  puts num1_divisors.inject(:+)
  puts num2_divisors.inject(:+)
  if num1_divisors.inject(:+) == num2 && num2_divisors.inject(:+) == num1
    return true
  end

end
=end
def amicable_numbers?(num1)
  num1_divisors = proper_divisors(num1)
  num2 = num1_divisors.inject(:+)
  num2_divisors = proper_divisors(num2)
  num_compare = num2_divisors.inject(:+)

  if (num1 == num_compare && num1!=num2)
    if !ARR.include?(num1) && !ARR.include?(num2)
      ARR << num1
      ARR << num2
    end
  end

  return 0
end


def sum_amicables(max)
  (2...max).each do |x|
    amicable_numbers?(x)
  end
  puts ARR.inject(:+)
end

sum_amicables(10000)
