# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
     return 0
  elsif arr.length == 1
     return arr[0]
  else 
     max_1 = arr.max()
     arr.delete_at(arr.index(arr.max))
     max_2 = arr.max()
     return max_1 + max_2
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
     return false
  elsif arr.length == 1
    return false
  end
  (0 .. arr.length-1).each do |outer|
    (outer + 1 .. arr.length-1).each do |inner|
      if (arr[inner] + arr[outer]) == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? == true
    return false
  end
  x = s.slice(0) 
  y = "bcdfghjklmnpqrstvwxyz".split('')
  y.each { |letter|
    if (x == letter) || (x.downcase == letter)
      return true
    end
  }
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # Empty string?
  if s.empty? == true
    return false
  end
  # Binary string?
  x = s.split('')
  x.each { |number|
    if (number != "0") && (number != "1")
      return false
    end
  }
  # Binary string ends in 00 (multiple of 4)?
  if (x[x.length-1] == "0") && (x[x.length-2] == "0")
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor:isbn
  attr_accessor:price
  
  def initialize isbn, price
    if isbn.empty? == true
      raise ArgumentError
    end
    @isbn = isbn
    if price <=0
      raise ArgumentError
    end
    @price = price
  end
  
  def price_as_string
    x = format("%.2f", @price)
    return "$" + x
  end
end
