#Multiples of 3 and 5

=begin

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

=end

def sum_of_multiples(number)
  index1=0
  sum=0
  while index1<number
    sum = sum + index1
    index1+=3
  end

  index2=0
  while index2<number
    if (index2%3!=0)
      sum = sum + index2
    end
    index2+=5
  end

  puts sum
end

puts sum_of_multiples(1000)
