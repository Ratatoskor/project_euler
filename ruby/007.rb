def is_prime(number)
  i=2
  while i<number**0.5
    if number <2
      return false
    elsif number%i==0
      return false
    end

    if i%2==0
      i+=1
    else
      i+=2
    end
  end
  return true
end


def x_prime(number)
  count =1
  i=1
  while count<number
    i+=2
    if is_prime(i)
      count+=1
    end
  end
  puts i
end


puts x_prime(10001)
