=begin

The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
=end

#First step: Find primes with only odd digits

#Returns true if prime, false if not prime
def is_prime?(number)
  idx = 2
  if number <  2
    return false
  end

  while idx <= number**0.5
     return false if number%idx == 0
     idx+=1
  end
  return true
end

#Returns true if all digits are odd, false if they aren't
#Also returns true if first digit is 2 and rest are odd
def all_digits_odd?(number)
  number.to_s.split(//).each_with_index do |digit,index|
    if index == 0 && digit.to_i == 2
      #Don't return false if first digit is 2
    elsif digit.to_i%2==0
      return false
    end
  end
  return true
end

#Returns true if left-truncatable prime
def left_to_right(number)
  arr = number.to_s.split(//)
  length = arr.length

  (length-1).times do
    arr.shift
    return false if !is_prime?(arr.join.to_i)
  end

  return true
end

#Returns true if right-truncatable prime
def right_to_left(number)
  arr = number.to_s.split(//)
  length = arr.length

  (length-1).times do
    arr.pop
    return false if !is_prime?(arr.join.to_i)
  end

  return true
end

def truncatable_primes
  trunc_primes = []
  index = 11     #Anything below 10 isn't considered truncatable prime

  until trunc_primes.length == 11
    #If number is prime and all digits (except first) are odd, check left and right truncability
    if is_prime?(index) && all_digits_odd?(index)
      #If number is left/right truncably prime, add to array of trunc primes
      if left_to_right(index) && right_to_left(index)
        trunc_primes << index
      end
    end

    index += 2
    end
  puts trunc_primes.inject(:+)
end

truncatable_primes
