require './lib/two_sum'
require 'benchmark'

RSpec.describe TwoSum do
  it 'will find the numbers in the nums variable that add up to the target' do
    nums = [2,7,11,15]
    target = 9

    expect(TwoSum.two_sum(nums,target)).to eq([0, 1])
  end

  it 'will find the solution when the numbers are not next to each other' do
    nums = [3, 2, 5, 66, 89, 4]
    target = 6

    expect(TwoSum.two_sum(nums,target)).to eq([1, 5])
  end

  it 'will find the solution when you have a large data set' do
    nums = (1..10_000).to_a
    target = 19999

    expect(TwoSum.two_sum(nums,target)).to eq([9998, 9999])

    puts Benchmark.bm { TwoSum.two_sum(nums,target) }
    puts Benchmark.measure { TwoSum.two_sum(nums,target) }
  end
end