#INTEGER RIGHT TRIANGLES


=begin

If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p ≤ 1000, is the number of solutions maximised?

=end

#--------MATH-------
# a**2 + b**2 = c**2
# p = a+ b + c
# a**2 + b**2 = (p-a-b)**2
# More algebra
#
# b = (p**2 - 2a)/(2p - 2a)
#
# For right triangle, a <= b < c
# a < p/3





def find_right_tri(max)
  right_triangles = {}
  solution = 0
  solutions = 0

  (2..max).each do |p|
    num_sols = 0
    (2..max/3).each do |a|
      if a<p && 0 == ((p*p-2.0*a*p)%(2.0*p-2.0*a))
        puts p
        num_sols += 1
      end
    end
    if num_sols > solutions
      solutions = num_sols
      solution = p
    end
  end

  puts solution
  puts solutions
end



find_right_tri(1000)
