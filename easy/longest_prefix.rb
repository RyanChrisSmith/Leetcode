class LongestPrefix
  def self.longest_common_prefix(strs)
    # Return empty string if input array is empty
    return '' if strs.empty?

    # Set prefix to first element in array
    prefix = strs.first

    # Loop through the rest of the elements in the array
    strs[1..].each do |string|
      # Keep looping until string has prefix as a prefix
      while string.index(prefix) != 0
        # Remove last character from prefix
        prefix = prefix[0...-1]
        # If prefix is empty, return empty string
        return '' if prefix.empty?
      end
    end

    # Return prefix if it is a common prefix for all elements in the array
    prefix
  end
end