RSpec.describe Lib::Outputters::CliOutputter do
  subject(:cli_outputter) { described_class.new(options) }

  let(:options) do
    {}
  end
  let(:commands) { Lib::CommandController::COMMANDS_LIST }
  let(:robot) { Lib::Robot.new(face) }
  let(:face) { Lib::Face.new }

  context '.instruction_message' do
    it 'should print output to stdout' do
      expect { subject.instruction_message(commands) }.to output.to_stdout
    end
  end

  context '.print_report' do
    it 'should print output to stdout' do
      expect { subject.print_report(robot) }.to output.to_stdout
    end
  end
end
