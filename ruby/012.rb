def all_factors(num)

  i=2
  factors =[]
  factors.push(1)
  while i<num
    if num%i==0
      factors.push(i)
    end
      i+=1
  end
  factors.push(num)
  return factors.length

end


def div_triangle_number(num_div)

  current_num = 1
  div_count=0
  i=1
  while div_count<500
    i+=1
    current_num=current_num+i
    div_count = all_factors(current_num)
    puts current_num
    puts div_count
  end

end

div_triangle_number(500)
