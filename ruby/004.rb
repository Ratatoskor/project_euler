#Largest Palindrome Produce

=begin


A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

#Returns true if input string is a palindrome
def palindrome?(string)
  low=0
  high=(string.length-1)

  while low<high
    if string[low]==string[high]
      low +=1
      high -=1
    else
      return false
    end
  end

  return true
end

#Checks for the largest palindromic product of two input numbers
def largest_palindrome_product(num1, num2)
  highest = 0
  while num1>0

    while num2 > 0
      number=num1*num2
      if palindrome?(number.to_s) && number > highest
        highest = number
      end
      num2-=1
    end

    num1-=1
    num2=num1
  end
  highest
end

puts largest_palindrome_product(9999,9999)
