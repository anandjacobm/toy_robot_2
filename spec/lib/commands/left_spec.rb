RSpec.describe Lib::Commands::Left do
  subject(:left) { described_class.new(robot, table) }

  let(:robot) { Lib::Robot.new(face) }
  let(:face) { Lib::Face.new }
  let(:face_name) { Lib::Face::NORTH }
  let(:table) { Lib::Table.new }

  context '.process' do
    context 'if robot not placed' do
      it 'should raise error' do
        expect { subject.process }.to raise_error(CustomError)
      end
    end

    context 'if robot is placed' do
      before do
        robot.x = 2
        robot.y = 2
        robot.face.name = face_name
      end
      it 'should change of robot to left side' do
        subject.process
        expect(robot.face.name).to eq('WEST')
      end
    end
  end
end
