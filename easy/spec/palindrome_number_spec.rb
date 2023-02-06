require './lib/palindrome_number'

RSpec.describe PalindromeNumber do
  it 'can tell if a number is a palindrome' do
    x = 121

    expect(PalindromeNumber.is_palindrome?(x)).to eq true
  end
end