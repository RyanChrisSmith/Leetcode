require './lib/length_last_word'

RSpec.describe LengthLastWord do
  it 'will find and return the length of the last word in a sentence' do
    check = LengthLastWord.new
    string  = "Hello World"

    expect(check.last_word_length(string)).to eq 5
  end

  it 'will find the length of the last word even if unevenly spaced' do
    check = LengthLastWord.new
    string = "   fly me   to   the moon  "

    expect(check.last_word_length(string)).to eq 4
  end
end