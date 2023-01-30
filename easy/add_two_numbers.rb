class AddTwoNumbers
  def self.add(list1, list2)
    result = []
    carry = 0

    # Iterate through the lists until they are both empty
    while list1.length > 0 || list2.length > 0
      # Get the last element of each list or set to 0 if the list is empty
      n1 = list1.pop || 0
      n2 = list2.pop || 0

      # Add the two numbers and the carry
      sum = n1 + n2 + carry

      # Update the carry and append the last digit of the sum to the result list
      carry = sum / 10
      result.unshift(sum % 10)
    end

    # Append the final carry to the result list if it is not 0
    result.unshift(carry) if carry > 0

    # Return the result list
    result.reverse
  end
end