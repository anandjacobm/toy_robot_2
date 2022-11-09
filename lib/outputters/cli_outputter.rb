# class for cli outputs
require_relative 'outputter_base'
module Lib
  module Outputters
    class CliOutputter < OutputterBase

      # to print instructions to the terminal
      def instruction_message(commands)
        puts "\n\nPlease type in your command"
        puts 'Following are the available commands'
        commands.each { |c| puts c }
        puts "Q for quiting the application\n\n"
      end

      # to print the current position and face of robot to terminal
      def print_report(robot)
        puts "\nCurrent position of Robot"
        puts '*************************'
        puts "X = #{robot.x}, Y = #{robot.y}, Face = #{robot.face.name}"
      end
    end
  end
end
