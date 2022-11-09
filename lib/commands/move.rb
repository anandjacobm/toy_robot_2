# class to handle move command
require_relative 'command_base'
module Lib
  module Commands
    class Move < CommandBase

      def process
        robot.check_robot_status

        move_place
      end

      private

      def move_place
        case robot.face.name
        when Face::NORTH
          check_new_position(robot.x, robot.y + 1)
          robot.y += 1
        when Face::EAST
          check_new_position(robot.x + 1, robot.y)
          robot.x += 1
        when Face::SOUTH
          check_new_position(robot.x, robot.y - 1)
          robot.y -= 1
        when Face::WEST
          check_new_position(robot.x - 1, robot.y)
          robot.x -= 1
        end
      end

      # raise error if a given point is not valid in a table
      def check_new_position(x, y)
        raise CustomError, 'Cannot move, On the edge' unless table.valid_point?(x, y)
      end
    end
  end
end
