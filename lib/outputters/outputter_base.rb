# base class for all outputters
module Lib
  module Outputters
    class OutputterBase

      def initialize(options = {})
        @options = options
      end

      # to print instructions to the terminal
      def instruction_message
        raise NoMethodError, 'outputter instructions not implemented'
      end

      # to print the current position and face of robot to terminal
      def print_report
        raise NoMethodError, 'outputter print report not implemented'
      end

      private

      attr_reader :options
    end
  end
end
