#Power digit sum

=begin

215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 21000?

=end

power = 2**1000

arr = power.to_s.split(//)

sum = 0
arr.each do |val|
  sum += val.to_i
end

puts sum
