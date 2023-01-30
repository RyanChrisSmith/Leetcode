require './remove_duplicates'

RSpec.describe RemoveDuplicates do
  it 'should return the input without the duplicate values and replaced with _' do
    nums = [1, 1, 2]

    expect(RemoveDuplicates.remove_duplicates(nums)).to eq([1, 2, "_"])
  end

  it 'can do it with longer nums' do
    nums = [0,0,1,1,1,2,2,3,3,4]

    expect(RemoveDuplicates.remove_duplicates(nums)).to eq([0, 1, 2, 3, 4, "_", "_", "_", "_", "_"])
  end
end