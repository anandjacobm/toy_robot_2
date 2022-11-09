RSpec.describe Lib::Inputters::CliInputter do
  subject(:cli_inputter) { described_class.new(options) }

  let(:options) do
    {}
  end

  context '.input' do
    it 'should get the input' do
      allow(subject).to receive(:gets).and_return('MOVE')
      expect(subject.input).to eq('MOVE')
    end
  end
end
