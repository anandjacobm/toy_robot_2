module Lib
  module Inputters
    class InputterBase

      def initialize(options = {})
        @options = options
      end

      def input
        raise NoMethodError, 'input method not implemented'
      end

      private

      attr_reader :options
    end
  end
end
