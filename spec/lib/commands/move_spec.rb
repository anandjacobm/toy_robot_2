RSpec.describe Lib::Commands::Move do
  subject(:move) { described_class.new(robot, table) }

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
        robot.face = face
      end

      context 'when north' do
        let(:face) { instance_double(Lib::Face, name: 'NORTH') }

        it 'should increase value of y by 1' do
          subject.process
          expect(robot.y).to eq(3)
        end
      end

      context 'when east' do
        let(:face) { instance_double(Lib::Face, name: 'EAST') }

        it 'should increase value of x by 1' do
          subject.process
          expect(robot.x).to eq(3)
        end
      end

      context 'when south' do
        let(:face) { instance_double(Lib::Face, name: 'SOUTH') }

        it 'should reduce value of y by 1' do
          subject.process
          expect(robot.y).to eq(1)
        end
      end

      context 'when west' do
        let(:face) { instance_double(Lib::Face, name: 'WEST') }

        it 'should reduce value of x by 1' do
          subject.process
          expect(robot.x).to eq(1)
        end
      end
    end
  end
end
