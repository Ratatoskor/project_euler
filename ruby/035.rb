#CIRCULAR PRIMES

=begin


The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?


=end



#Checks the number for primeness
def is_prime?(number)
  return false if number < 2

  #Start at 2, since anything lower isn't prime
  idx = 2

  #Anything above has a conjugatae divisor less than sqrt number.
  while idx < number**0.5

    if number%idx==0
      return false
    end

  #After 2, only check odd numbers for primeness
    if idx%2==0
      idx += 1
    else
      idx += 2
    end
  end

  return true
end

# Checks to see if all digits in prime are odd.
# If they aren't the number can't be a circular prime
def only_odd_digits?(number)
  digits = number.to_s.split(//)
  return true if number == 2
  digits.each do |digit|
    return false if digit.to_i%2==0
  end
  return true
end

#Generates number rotations, checks for primeness
def is_circular_prime?(number)
  rotation = number.to_s.split(//).map! {|i| i.to_i}

  (rotation.length).times do
    rotation.push(rotation.shift)
    number = rotation.join().to_i

    if !is_prime?(number)
      return false
    end
  end

  if number == 9
    return false
  end

  return true
end

#Outputs number of circular primes below max
def  circular_primes(max)
  idx = 2 #numbers lower than 2 aren't prime
  circ_primes = []

  while idx<max
    if only_odd_digits?(idx)     #Check to see if all digits in number are odd
      if is_circular_prime?(idx)
        circ_primes << idx
      end
    end

    if idx%2==0  #Only check odd numbers, because evens besides 2 aren't prime
      idx += 1
    else
      idx +=2
    end
  end

  return circ_primes.length
end

puts circular_primes(10000)
