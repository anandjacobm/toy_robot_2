require_relative 'inputter_base'
module Lib
  module Inputters
    class CliInputter < InputterBase

      def input
        gets.chomp
      end
    end
  end
end
