RSpec.describe Lib::Commands::CommandBase do
  subject(:command_base) { described_class.new(robot, table) }

  let(:robot) { Lib::Robot.new(face) }
  let(:face) { Lib::Face.new }
  let(:face_name) { Lib::Face::NORTH }
  let(:table) { Lib::Table.new }

  context '.initialize' do
    it 'should have a table and robot object' do
      expect(subject.send(:table)).to be_a Lib::Table
      expect(subject.send(:robot)).to be_a Lib::Robot
    end
  end
  context '.process' do
    it 'should raise error' do
      expect { subject.process }.to raise_error(NoMethodError)
    end
  end
end
