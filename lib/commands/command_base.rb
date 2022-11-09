# base class for the commands
module Lib
  module Commands
    class CommandBase

      def initialize(robot, table, args = {})
        @robot = robot
        @table = table
        @args = args
      end

      def process
        raise NoMethodError, 'command process no implemented'
      end

      private

      attr_reader :robot, :table, :args
    end
  end
end
