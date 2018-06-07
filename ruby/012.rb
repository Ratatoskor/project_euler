def number_divisors(number)
  count=0
  div = 1
  while div<=number**0.5
    if number%div ==0
      count +=2
    end
  div+=1
  end
  puts "#{number} #{count}"
  return count
end

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


puts number_divisors(76576500)
