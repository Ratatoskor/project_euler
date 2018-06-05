def sum_of_multiples(number)
  i=0
  sum=0
  while i<number
    sum = sum + i
    i+=3
  end
  
  i=0
  while i<number
    if (i%3!=0)
      sum = sum + i
    end
    i+=5
  end
  
  puts sum
    
  

end


puts sum_of_multiples(1000)
