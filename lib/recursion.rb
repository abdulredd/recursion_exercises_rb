def countdown(number)
  return [0] if number <= 0

  countdown(number - 1).unshift(number)
end

def get_sum(numbers)
  return numbers[0] if numbers.length <= 1

  numbers[0] + get_sum(numbers[1..-1])
end

def factorial(number)
  return 1 if number <= 1

  factorial(number - 1) * number
end

def reverse(string)
  return string if string.empty?

  reverse(string[1..-1]) + string[0]
end

def power(base, exponent)
  return 1 if exponent == 0

  power(base, exponent - 1) * base
end

def is_palindrome?(string)
  return true if string.length <= 1

  matching_edges = string[0] == string[-1]

  is_palindrome?(string[1..-2]) && matching_edges
end

def upcase(string)
  return string.upcase if string.length <= 1

  string[0].upcase + upcase(string[1..-1])
end

def sum_of_digits(number)
  return nil if number < 0
  return number if number <= 1

  sum_of_digits(number - 1) + number
end

def in_stock?(inventory, item)
  return false if inventory.empty?
  return true if inventory[0] == item

  in_stock?(inventory[1..-1], item)
end

def find_max(numbers)
  return numbers[0] if numbers.length <= 1

  max = find_max(numbers[1..-1])

  max > numbers[0] ? max : numbers[0]
end

def number_of_zeroes(numbers)
  return 0 if numbers.length == 0

  count = numbers[0] == 0 ? 1 : 0

  number_of_zeroes(numbers[1..-1]) + count
end

def just_positives(numbers)
  return 0 if numbers.length == 0

  num = numbers[0] > 0 ? numbers[0] : 0

  just_positives(numbers[1..-1]) + num
end

def number_of_occurrences(elements, target)
  return 0 if elements.length == 0

  count = elements[0] == target ? 1 : 0

  number_of_occurrences(elements[1..-1], target) + count
end

def fibonacci(number)
  return number if number <= 1

  fibonacci(number - 2) + fibonacci(number - 1)
end
