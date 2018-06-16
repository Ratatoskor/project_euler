#Returns true is input is palindrome. Returns false if it isn't.
def is_palindrome?(number)
  string = number.to_s
  low = 0
  high = string.length-1
  i = 0

  #Check until markers meet in middle. If all comparisons are true, then the input is a palindrome
  while (low+i) < (high-i)
    return false if string[low+i] != string[high-i]
    i= i + 1
  end

  return true
end

#Returns input number in base 2 as a string (returned string is backwards)
def convert_base2(number)
  return number.to_s if number < 2
  return (number%2).to_s + (convert_base2(number/2)).to_s
end

#Returns sum of all double based (base 2, base 10) numbers that are palindromes up to max
def double_based_palindrome(max)
  double_palindromes = []
  index = 0

  # First checks if num in base 10 is a palindrome
  # If true, checks if num in base 2 is palindrome
  while index < max
    if is_palindrome?(index)
      binary_num = convert_base2(index).reverse
      if is_palindrome?(binary_num)
        double_palindromes << index
      end
    end

  index += 1
  end

  puts double_palindromes
  return double_palindromes.inject(:+)
end


puts "Sum: " + double_based_palindrome(10000000).to_s
