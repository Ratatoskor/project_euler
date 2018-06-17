#Special Pythagorean Triplet

=begin

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.


=end


a=1
while a<1000/3
  b=a+1
  while b<1000/2
    c = (a*a + b*b)**0.5
    if (a + b + c == 1000)
      puts a*b*c
      break
    end
    b+=1
  end
  a+=1
end
