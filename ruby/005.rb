
#Don't have to check for 1-10, since 2*(any n<10) <=20
#Increment by the largest number!
=begin
i=20
while true
  if (i%11==0 &&
     i%12==0 &&
     i%13==0 &&
     i%14==0 &&
     i%15==0 &&
     i%16==0 &&
     i%17==0 &&
     i%18==0 &&
     i%19==0 &&
     i%20==0)
     break
  else
    i+=20
  end
end
puts i
puts (2*3*5*7*11*13*17*19)

=end

## Using Prime factorization:

#Find the largest prime factorization:
#lprimefactor finds the largest prime factor of a number
#smallest_multiple checks to see if PRODUCT is evenly divisible by
# 0<=number. If it isn't then it multiples PRODUCT by the largest prime factor

def lprimefactor(number)
  i=2                      #Set counter to two, since all prime numbers >=2
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
