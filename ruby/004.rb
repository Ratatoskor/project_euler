
def palindrome?(string)
low=0
high=(string.length-1)
while low<high
   if string[low]==string[high] 
    low +=1
    high -=1
  else 
  end
end
return true

end

puts palindrome?("racecar")


i = 999
j = 999

while i>0

  while j>0
    number=i*j
    puts number
    if palindrome?(number.to_s)
      puts number 
    end     
    j-=1
  end

  i-=1
  j=i-1

end

