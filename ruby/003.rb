#Largest P factor

=begin

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end



def largest_pfactor(number)
  i=2

  while i<=number

    if i==number
     puts number
    elsif number%i == 0
       number=number/i
       puts i
       i=2
    end

    if i%2==0
      i+=1
    else
      i+=2
    end

  end

end



 largest_pfactor(600851475143)
