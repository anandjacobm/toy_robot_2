# class to handle left command
require_relative 'command_base'
module Lib
  module Commands
    class Left < CommandBase

      def process
        robot.check_robot_status

        turn_left
      end

      private

      def turn_left
        @robot.face.face_to_left
      end
    end
  end
end
