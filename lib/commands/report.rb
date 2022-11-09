require_relative 'command_base'
module Lib
  module Commands
    class Report < CommandBase

      def process
        robot.check_robot_status
        check_outputter
        outputter.print_report(robot)
      end

      private

      def check_outputter
        raise CustomError, 'Outputter not set' if outputter.nil?
      end

      def outputter
        @outputter ||= @args[:outputter]
      end
    end
  end
end
