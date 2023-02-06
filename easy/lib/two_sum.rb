class TwoSum
  def self.two_sum(nums, target)
    # Create a hash to store the indices of the elements in the array
    indices = {}
    # Iterate through each element in the array
    nums.each_with_index do |num, i|
      # Calculate the difference between the target and the current element
      diff = target - num

      # If the difference is in the hash, return the indices
      if indices.has_key?(diff)
        return [indices[diff], i]
      end

      # Otherwise, store the index of the current element in the hash
      indices[num] = i
    end
  end
end