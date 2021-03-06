#Highly divisible triangle number

=begin

The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:

     1: 1
     3: 1,3
     6: 1,2,3,6
    10: 1,2,5,10
    15: 1,3,5,15
    21: 1,3,7,21
    28: 1,2,4,7,14,28

We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?


=end
#Outputs the number of divisors for the input number
def number_divisors(number)
  count=0
  div = 1

  #Only check up to sqrt number. Anything over is a complimentary divisor, so the count can be doubled.
  while div<=number**0.5
    if number%div ==0
      count +=2
    end
  div+=1
  end
  puts "#{number} #{count}"
  return count
end


#Generated triangle numbers and sends them to number_divisors
def triangle_num(num)
  inf = 1/0.0
  number = 0
  (1..inf).each do |x|
    number = (x*(x+1)/2)
    if number%2==0
      if number_divisors(number)>=num
        return x
      end
    end
  end
end

puts triangle_num(500)
