class PlusOne
  def self.plus_one(digits)
    # Initialize carry value to 1
    carry = 1

    # Iterate over the digits in reverse order
    (digits.length - 1).downto(0) do |i|
      # Add carry value to current digit
      digits[i] += carry
      # If current digit is less than 10, return the digits array
      return digits if digits[i] < 10
      # Set current digit to 0 and set carry value to 1
      digits[i] = 0
      carry = 1
    end

    # If all digits have been processed and carry value is still 1,
    # append 1 to the front of the digits array
    digits.unshift(1)
  end
end