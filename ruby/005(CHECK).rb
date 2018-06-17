#Smallest Multiple

=begin

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end


def lprimefactor(number)
  i=2             #Set counter to two, since all prime numbers >=2
  while i<number
    if number%i == 0      #If modulus isn't 0, then i is a factor
      number = number/i   #Divide off that factor from the number
      i=2
    elsif i%2==0           #Small prime is 2
      i+=1
    else
      i+=2                #Besides 2, no even numbers are prime,
    end
  end
  return number
end




def smallest_multiple(number)
  count = 2
  product = 1
  while count<=number
    if product%count!=0
      product = product*lprimefactor(count)
    end
    count+=1
  end
  puts product
end


puts smallest_multiple(10000)
