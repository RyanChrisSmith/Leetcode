require './longest_prefix'

RSpec.describe LongestPrefix do
  it 'will return the longest matching prefix in provided strings' do
    strs = ["flower","flow","flight"]

    expect(LongestPrefix.longest_common_prefix(strs)).to eq("fl")
  end

  it 'will return an empty string if there is no common prefix' do
    strs = ["dog","racecar","car"]

    expect(LongestPrefix.longest_common_prefix(strs)).to eq("")
  end
end