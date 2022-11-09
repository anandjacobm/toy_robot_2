RSpec.describe Lib::Command do
  subject(:command) { described_class }

  let(:robot) { Lib::Robot.new(face) }
  let(:face) { Lib::Face.new }
  let(:face_name) { Lib::Face::NORTH }
  let(:table) { Lib::Table.new }
  let(:args) do
    {}
  end

  context '.to' do
    context 'when right command' do
      let(:command) { 'LEFT' }

      it 'should return command class' do
        klass = described_class.to(command, robot, table, args )
        expect(klass).to be_a Lib::Commands::Left
      end
    end

    context 'when wrong command' do
      let(:command) { 'UP' }

      it 'should return command class' do
        expect { described_class.to(command, robot, table, args ) }.to raise_error(StandardError)
      end
    end
  end
end
