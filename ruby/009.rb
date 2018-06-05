a=1
while a<1000/3
  b=a+1
  while b<1000/2
    c = (a*a + b*b)**0.5
    if (a + b + c == 1000)
      puts [a,b,c]
      break
    end
    b+=1
  end
  a+=1
end
