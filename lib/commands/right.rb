require_relative 'command_base'
module Lib
  module Commands
    class Right < CommandBase

      def process
        robot.check_robot_status

        turn_right
      end

      private

      def turn_right
        robot.face.face_to_right
      end
    end
  end
end
