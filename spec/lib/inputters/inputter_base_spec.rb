RSpec.describe Lib::Inputters::InputterBase do
  subject(:inputter_base) { described_class.new(options) }

  let(:options) do
    {}
  end

  context '.initialize' do
    it 'should have options' do
      expect(subject.send(:options)).to eq(options)
    end
  end

  context '.input' do
    it 'should raise error' do
      expect { subject.input }.to raise_error(NoMethodError)
    end
  end
end
