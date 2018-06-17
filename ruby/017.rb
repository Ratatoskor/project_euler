#Number letter counts

=begin

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

=end

NUMBERS = {1 => "one",
           2 => "two",
           3 => "three",
           4 => "four",
           5 => "five",
           6 => "six",
           7 => "seven",
           8 => "eight",
           9 => "nine",
          10 => "ten",
          11 => "eleven",
          12 => "twelve",
          13 => "thirteen",
          14 => "fourteen",
          15 => "fifteen",
          16 => "sixteen",
          17 => "seventeen",
          18 => "eighteen",
          19 => "nineteen",
          20 => "twenty",
          30 => "thirty",
          40 => "forty",
          50 => "fifty",
          60 => "sixty",
          70 => "seventy",
          80 => "eighty",
          90 => "ninety",
         100 => "hundred",
        1000 => "thousand"}

#Takes in a number, and returns it written out in letters
def num_to_word(number)
  str = ""

  #Checks to see if number is 1000
  if number/1000 == 1
    str += NUMBERS[number/1000] + NUMBERS[1000]
    number = number%1000
  end

  #Checks for hundreds place
  if number/100 > 0
    str += NUMBERS[number/100] + NUMBERS[100]
    number = number%100
  end

  #Adds "and" if the value is over 100 and has digits in the tens or ones places
  if str.length != 0 && number != 0
    str += "and"
  end

  #Checks for tens places greater than or equal to twenty
  if number/10 >= 2
    str += NUMBERS[number/10*10]
    number = number%10
  end

  #Checks for remaining places (<=19)
  if number > 0
    str += NUMBERS[number]
  end

  return str
end

#Takes in a number (up to 1000) and counts all the letters of 1..number (inclusive)
def num_word_count(max)

  count = 0

  (1..max).each do |num|
    count += num_to_word(num).length
  end

  return count
end


puts num_word_count(1000)
