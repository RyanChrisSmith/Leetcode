require './lib/plus_one'

RSpec.describe PlusOne do
  it 'will take an array of digits and add 1' do
    digits = [1,2,3]

    expect(PlusOne.plus_one(digits)).to eq([1,2,4])
  end

  it 'will do it with reversed order' do
    digits = [4,3,2,1]

    expect(PlusOne.plus_one(digits)).to eq([4,3,2,2])
  end

  it 'will appropriately carry the numbers when using 9' do
    digits = [9,9,9,9,9]

    expect(PlusOne.plus_one(digits)).to eq([1, 0, 0, 0, 0, 0])
  end
end