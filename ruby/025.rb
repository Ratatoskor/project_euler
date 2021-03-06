=begin

Problem 25



The Fibonacci sequence is defined by the recurrence relation:

    Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.

Hence the first 12 terms will be:

    F1 = 1
    F2 = 1
    F3 = 2
    F4 = 3
    F5 = 5
    F6 = 8
    F7 = 13
    F8 = 21
    F9 = 34
    F10 = 55
    F11 = 89
    F12 = 144

The 12th term, F12, is the first term to contain three digits.

What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

=end

#Generates nth digit of fibonacci
@cache = {}; @cache[1]=1; @cache[2]=1
def fibonacci(n)
  @cache[n] ||= fibonacci(n-1)+fibonacci(n-2)
end

def fibonacci_digits(max)

  (1..1/0.0).each do |num|
    length = fibonacci(num).to_s.length
    return num if length >= max
   end

end


puts fibonacci_digits(1000)
