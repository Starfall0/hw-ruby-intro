# frozen_string_literal: true

# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.sum # sum the array
end

def max_2_sum(arr)
  arr.sort.last(2).sum # sort the array and get the sum of last two elements
end

def sum_to_n?(arr, n)
  # use combination to check if two number of array is equal to n(use a Bloack as condition)
  arr.combination(2).any? do |a, b|
    a + b == n
  end
end

# Part 2A

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  /^[^aeiou\W]/i.match?(s) # use a regular expression to check if the string starts with a consonant(aeiou is vowel) ^ negate the character set
end

def binary_multiple_of_4?(s)
  return false unless /^[01]+$/.match(s) # return false if the string did not contain 0 or 1

  num = s.to_i(2) # convert from string to integer(2 is binary)
  (num % 4).zero? # check if value is a multiple of 4
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'Invalid ISBN number' if isbn.empty? # check if isbn is emty then error
    # check if the price is lower than zero then error
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', @price) # formats the price with two decimal places and adds a dollar sign in front
  end
end
