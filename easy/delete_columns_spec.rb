require './delete_columns'

RSpec.describe DeleteColumns do
  it 'will sort to a matrix and then choose how many rows to delete' do
    strs = ["abc", "bce", "cae"]

    expect(DeleteColumns.min_deletion_size(strs)).to eq 1
  end

  it 'will return 0 if the columns are sorted correctly' do
    strs = ["a","b"]

    expect(DeleteColumns.min_deletion_size(strs)).to eq 0
  end

  it 'will return 3 when all are out of order' do
    strs = ["zyx","wvu","tsr"]

    expect(DeleteColumns.min_deletion_size(strs)).to eq 3
  end
end