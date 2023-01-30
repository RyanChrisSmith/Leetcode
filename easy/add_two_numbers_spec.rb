require './add_two_numbers'

RSpec.describe AddTwoNumbers do
  it 'can add two lists together' do
    l1 = [2, 4, 3]
    l2 = [5, 6, 4]

    expect(AddTwoNumbers.add(l1, l2)).to eq([7, 0, 8])
  end

  it 'can add two lists of 0 together' do
    l1 = [0]
    l2 = [0]

    expect(AddTwoNumbers.add(l1, l2)).to eq([0])
  end

  it 'can add two lists with all 9s together' do
    l1 = [9, 9, 9, 9, 9, 9, 9]
    l2 = [9, 9, 9, 9]

    expect(AddTwoNumbers.add(l1, l2)).to eq([8, 9, 9, 9, 0, 0, 0, 1])
  end
end