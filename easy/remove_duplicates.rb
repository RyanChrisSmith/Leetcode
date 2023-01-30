class RemoveDuplicates
  def self.remove_duplicates(nums)
    # Check if the array is empty or has only one element
    return nums.length if nums.length <= 1

    # Initialize a slow pointer and a fast pointer
    slow = 0
    fast = 1

    # Iterate over the array using the fast pointer
    while fast < nums.length
      # If the element at the fast pointer is not a duplicate of the element at the slow pointer
      if nums[fast] != nums[slow]
        # Increment the slow pointer and copy the element at the fast pointer to the element at the slow pointer
        slow += 1
        nums[slow] = nums[fast]
      end
      # Increment the fast pointer
      fast += 1
    end

    # Modify the input array in place by replacing the remaining elements with _
    while slow < nums.length - 1
      slow += 1
      nums[slow] = '_'
    end

    # Return the modified array
    nums
  end
end