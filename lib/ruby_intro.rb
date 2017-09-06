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
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
