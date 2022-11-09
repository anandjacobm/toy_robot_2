RSpec.describe Lib::Commands::Report do
  subject(:report) { described_class.new(robot, table, options) }

  let(:robot) { Lib::Robot.new(face) }
  let(:face) { Lib::Face.new }
  let(:face_name) { Lib::Face::NORTH }
  let(:table) { Lib::Table.new }
  let(:outputter) { Lib::Outputters::CliOutputter.new(robot) }
  let(:options) do
    {}
  end

  context '.process' do
    context 'if robot not placed' do
      it 'should raise error' do
        expect { subject.process }.to raise_error(CustomError)
      end
    end

    context 'if robot is placed' do
      context 'outputter not present' do
        it 'should raise error' do
          expect { subject.process }.to raise_error(CustomError)
        end
      end

      context '.outputter' do
        let(:options) do
          { outputter: outputter}
        end
        before do
          robot.x = 2
          robot.y = 2
          robot.face.name = face_name
          allow(Lib::Outputters::CliOutputter).to receive(:new).and_return(outputter)
          allow(outputter).to receive(:print_report)
        end

        it 'call print report' do
          subject.process
          expect(outputter).to have_received(:print_report).with(robot)
        end
      end
    end
  end
end
