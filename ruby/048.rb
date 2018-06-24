#SELF POWERS

=begin


The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.


=end
sum = 0
(1..1000).each do |num|
  sum += (num**num)
end

puts sum.to_s.split(//).slice(-10,10).join("")
