=begin
 LOOK INTO MORE SOLUTIONS:

Sliding product:
Multiply proudct by next number, divide by the trailing number
If next number is 0, 0 as new trailing number
Multiply new tail, largest_product

Separate thing/sliding product:

Separate into strings by splitting at 0
evaluate each string using sliding product


=begin

def largest_product(number)
  num_char = number.to_s
  num_array = num_char.split("")
  length = num_array.length

  value = 0
  i=0

  while i<num_array.length-13
    product = num_array[i].to_i
    j=i+1
    while (j<i+13 && j<=length)
      product = product*num_array[j].to_i
      if product > value
        value = product
      end
      j+=1
    end
    i+=1
  end
  return value
end
puts largest_product(731671765313306249192251196744265747423553491949349698352031277450632623957831801698480186947885184396983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450)
=end

# Sliding solution

def largest_product_sliding(l,number)

  num_char = number.to_s
  num_array = num_char.split("")
  length = num_array.length

 value = 1
  i=0
  #set initial value
  while i<l
    current_int = num_array[i].to_i
    value = value*current_int
    i+=1
  end
  puts value

  i=l

  while i<length-1
    trail_int = num_array[i-l-1].to_i
    next_int = num_array[i].to_i

    if trail_int =

    i+=1
  end

end
  #while i<length-l


  #  i+=1
  #end

puts largest_product_sliding(7,1234567)