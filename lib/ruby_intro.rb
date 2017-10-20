# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  num = 0
  total = 0
  begin
      total += arr[num]
      num = num + 1
    end while num < arr.length
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  x = arr.sort
  return x[-1] + x[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  return false if arr.length == 1
  return true if arr.empty?               

  arr.combination(2).any? {|a, b| a + b == n }
        
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  return false if s =~ /\A[^a-z]/i
  return true if s =~ /\A[^aeiou]/i
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty? || s =~ /[^01]/
  (s == '0') || s.end_with?('00')
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn , :price
    
    def isbn= (isbn)
      if isbn == ''
        raise ArgumentError.new("Invalid ISBN")
      end
      @isbn = isbn
    end
    
    def price= (price)
      if price <= 0
        raise ArgumentError.new("Invalid price")
      end
      @price = price
    end
    
    def initialize (isbn,price)
        @isbn = isbn 
        @price = price
    end
    
    def price_as_string
        return "$" << '%.2f' % price.to_s 
    end
end
