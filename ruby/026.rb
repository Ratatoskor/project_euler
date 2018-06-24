# RECIPROCAL CYCLES


=begin



A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

    1/2	= 	0.5
    1/3	= 	0.(3)
    1/4	= 	0.25
    1/5	= 	0.2
    1/6	= 	0.1(6)
    1/7	= 	0.(142857)
    1/8	= 	0.125
    1/9	= 	0.(1)
    1/10	= 	0.1

Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.


=end

#Receives tsring, returns longest repeating cycle, if any
def repeat?(str)
  length = str.length
  arr=str.split(//)

  longest = 0
  output = ""

  arr.each_with_index do |start, index|
    slice = 1
    while index+slice < length
        if arr.slice(index,slice) == arr.slice(index+slice,slice)
          temp = arr.slice(index,slice).join("")
          if temp.length > longest
            output = temp
            longest = temp.length
          end
        end
      slice +=1
    end
  end

  #Return false if no repeating strings
  return output
end



def check_nums(max)
  output=nil
  longest = 0
  sequence = ""

  (1..max).each do |number|
    num_to_check = (1.0/number).to_s
    result = repeat?(num_to_check)
    if result != false and result.length > longest
      output = number
      sequence = result
      longest = result.length
    end
  end
  puts output
  puts sequence
end


check_nums(1000)
