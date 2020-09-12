# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
#
#
#

def binary_to_decimal(binary_array)
  # Loop over a random binary number (0s and 1s)\
  #   result = number * 2 to the power of index
  # return result


  index = 7
  b_index = 0
  result = 0
  while index >= 0 do
    result += (2 ** b_index) * binary_array[index].to_i
    b_index += 1
    index -= 1
  end

  result
end


# def binary_to_decimal(binary_array)
#
#   index = 8
#   decimal_num = 0
#   while index >= 0
#     # puts binary_array[index]
#     (2 ** binary_array[]) * binary_array[index].to_i = decimal_num
#     index -= 1
#   end
#
#   return decimal_num
#
# end
