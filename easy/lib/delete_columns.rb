class DeleteColumns
  def self.min_deletion_size(strs)
    # Initialize an array to store each column of characters
    cols = []

    # Iterate through each column of the matrix
    for i in 0...strs[0].length
      # Add the characters in the current column to the cols array
      cols[i] = strs.map { |str| str[i] }
    end

    # Initialize a counter for the number of deleted columns
    count = 0

    # Iterate through each column in the cols array
    cols.each do |arr|
      # Increment the counter if the column is not sorted
      count += 1 if arr != arr.sort
    end

    # Return the final count
    count
  end
end