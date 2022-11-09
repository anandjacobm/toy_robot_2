RSpec.describe Lib::ParseInput do
  subject(:parse) { described_class }

  context '.parse' do
    let(:input) { 'PLACE 0,0,NORTH' }
    it 'should return command and args' do
      command, args = parse.parse(input)
      expect(command).to eq('PLACE')
      expect(args).to eq({ face: 'NORTH', x: 0, y: 0 })
    end
  end
end
