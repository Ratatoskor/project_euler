
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

puts largest_palindrome_product(999,999)
