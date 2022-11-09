RSpec.describe Lib::Outputters::OutputterBase do
  subject(:outputter_base) { described_class.new(options) }

  let(:options) do
    {}
  end

  context '.initialize' do
    it 'should have options' do
      expect(subject.send(:options)).to eq(options)
    end
  end
  context '.instruction_message' do
    it 'should raise error' do
      expect { subject.instruction_message }.to raise_error(NoMethodError)
    end
  end

  context '.print_report' do
    it 'should raise error' do
      expect { subject.print_report }.to raise_error(NoMethodError)
    end
  end
end
