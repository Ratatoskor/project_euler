#NON-ABUNDANT SUMS

=begin

A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

=end

# Returns an array with the proper disivors of num
def proper_divs(num)
  divs = []
  (1...num).each do |x|
    divs << x if num%x == 0
  end
  return divs
end

# Returns true if num is abundant, false if it is not
def is_abundant?(num)
  return false if proper_divs(num).length == 0
  return true if proper_divs(num).inject(:+) > num
  return false
end

def abundant_nums_generator(num)
  abundant_nums =[]
  (1..num).each do |x|
    if abundant_nums.include?(x/2.0) || abundant_nums.include?(x/3.0)
      abundant_nums << x
    else
    abundant_nums << x if is_abundant?(x)
    end
  end
  return abundant_nums
end

Abundant_nums = abundant_nums_generator(28123)


def is_sum_of_abundants?(num)

  Abundant_nums.each do |abun_num|
    if Abundant_nums.include?(num-abun_num)
      return true
    end
  end
  return false
end


def sum_of_abundants(num)
  array = []
  (1..num).each do |num|
    array << num if !is_sum_of_abundants?(num)
  end
  puts array
end


sum_of_abundants(28123)
