=begin



    About
    Archives
    Recent
    News
    Register
    Sign In

Search ProblemsRSS Feed
Longest Collatz sequence
Problem 14

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.


Project Euler: Copyright Information | Privacy Policy

=end
HASH={}

def collatz_length(num)
    input = num
  count = 1
  while num != 1
    if HASH.include?(num)
      count += HASH[num]
      num = 1
    elsif num%2==0
      num = num/2
    else
      num = num*3 +1
    end
    count +=1
  end

  if !HASH.include?(input)
    HASH[input] = count
  end
  count
end


def longest_collatz(num)
  sequence = 0
  value = 0

  (1..num).each do |val|
    collatz_length = collatz_length(val)
    if collatz_length > sequence
      sequence = collatz_length
      value = val
    end
  end
  value
end

puts longest_collatz(1000000)
