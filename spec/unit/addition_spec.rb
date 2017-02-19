RSpec.describe Integer do
  it 'should add numbers' do
    expect(5 + 5).to eq(10)
  end

  it 'should convert from string' do
    expect(Integer('5')).to eq(5)
  end
end
