RSpec.describe Lib::Table do
  subject(:table) { described_class.new(x, y) }

  let(:x) { 5 }
  let(:y) { 5 }

  context '.initialize' do
    it 'should have x and y set' do
      expect(subject.x).to eq(x)
      expect(subject.y).to eq(y)
    end

    it 'should have a default value set if x and y not passed' do
      table = described_class.new
      expect(table.x).to eq(described_class::DEFAULT_X)
      expect(table.y).to eq(described_class::DEFAULT_Y)
    end
  end

  context '.valid_point?' do
    it 'should return true if a point is inside a table' do
      expect(subject.valid_point?(2,2)).to be true
    end

    it 'should return false if a point is outside a table' do
      expect(subject.valid_point?(5,1)).to be false
    end
  end
end
