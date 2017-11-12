def add (first_num, second_num)
  return first_num + second_num
end

def subtract (first_num, second_num)
  return first_num - second_num
end

def sum(num_array)
  result = 0

  num_array.each do |num|
    result += num
  end
  return result
end

def multiply(num_array)
  result = 1

  num_array.each do |num|
    result *= num
  end
  return result
end

def power(base, exponent)
  result = 1

  exponent.times do
    result *= base
  end
  return result
end

def factorial(num)
  result = 1

  while num > 0 do
    result *= num
    num -= 1
  end
  return result
end
