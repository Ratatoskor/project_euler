def largest_pfactor(number)
  i=2
  
  while i<=number
  
    if i==number
     puts number
    end
    
    if number%i == 0
       number=number/i
       puts i
       i=2
    end 
    
    if i==2
      i = 3
    else
      i+=2
    end
    
  end  
     
end



 largest_pfactor(808567)
