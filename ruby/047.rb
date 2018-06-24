#Distinct primes factors

=begin



The first two consecutive numbers to have two distinct prime factors are:

14 = 2 × 7
15 = 3 × 5

The first three consecutive numbers to have three distinct prime factors are:

644 = 2² × 7 × 23
645 = 3 × 5 × 43
646 = 2 × 17 × 19.

Find the first four consecutive integers to have four distinct prime factors each. What is the first of these numbers?

=end

#outputs hash with prime divisors
def prime_factors(number)
  factors = {}
  n = number
  i=2 #Anything lower cannot be prime

  while i <= n
    if n%i == 0
      factors[i] += 1 if factors.include?(i)
      factors[i] = 1 if !factors.include?(i)
      n=n/i
      i = 0
    end

    if i == 0
      i = 2
    elsif i == 2
      i = 3
    else
      i += 2
    end

  end

  return factors.count
end

def x_distinct_factors(num)
  consecutives = 0

    (2..1/0.0).each do |n|
      if consecutives == num
        return n-num
      end

      if prime_factors(n) == num
        consecutives += 1
      else
        consecutives = 0
      end
    end

end

puts x_distinct_factors(4)
