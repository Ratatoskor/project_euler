def is_prime(number)

  if number <2      #All primes are >=2
    return false
  elsif number == 2 #Check for only even prime
    return true
  end

  i=3                #No need to check for even primes after 2
  while i<=number**0.5
    if number%i==0
      return false
    end
    i+=2             #No need to check for even primes after 2
  end
  return true
end


def sum_of_primes(number)

  # Set sum=2 so we can skip 2 (only even prime)
  sum=2
  # Set counter to three, so we don't recount 2
  # Allows us to check only odd numbers for primeness
  i=3
  while i<=number.to_i
    if is_prime(i)
      puts i
      sum = sum + i
    end
    i+=2
  end
  return sum
end


puts "Please enter an integer greater than 2: "
integer = gets.chomp
puts sum_of_primes(integer)
