RSpec.describe Lib::Commands::Place do
  subject(:place) { described_class.new(robot, table, args) }

  let(:robot) { Lib::Robot.new(face) }
  let(:face) { Lib::Face.new }
  let(:face_name) { Lib::Face::NORTH }
  let(:table) { Lib::Table.new }

  context '.process' do
    context 'when wrong args' do
      context 'when point is not valid' do
        let(:args) do
          { x: -1, y: 0, face: 'NORTH' }
        end

        it 'should raise error' do
          expect { subject.process }.to raise_error(CustomError)
        end
      end
      context 'when face is not valid' do
        let(:args) do
          { x: 1, y: 0, face: 'NORTHERN' }
        end

        it 'should raise error' do
          expect { subject.process }.to raise_error(CustomError)
        end
      end
    end

    context 'when right args' do
      let(:args) do
        { x: 0, y: 0, face: 'NORTH' }
      end
      it 'should set the x, y, face value of robot' do
        subject.process
        expect(robot.x).to eq(0)
        expect(robot.y).to eq(0)
        expect(robot.face.name).to eq('NORTH')
      end
    end
  end
end
