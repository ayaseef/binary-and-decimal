# Convert a decimal number passed as a parameter to a binary array sequence.


def decimal_to_binary(decimal)

  return decimal.to_s if decimal <= 1
  binary_array = []
  while decimal > 0
    binary_array << decimal % 2
    decimal /= 2
  end

  while binary_array.length < 8
    binary_array << 0
  end
  binary_array.reverse

end
