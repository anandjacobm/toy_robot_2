require_relative 'command_base'
module Lib
  module Commands
    class Place < CommandBase

      def process
        validate_args

        place_robot
      end

      private

      def validate_args
        raise CustomError, 'Not a valid point ON table' unless table.valid_point?(@args[:x], @args[:y])
        raise CustomError, 'Not a valid face' unless Face.valid_face?(@args[:face])
      end

      def place_robot
        @robot.x = @args[:x]
        @robot.y = @args[:y]
        @robot.face.name = @args[:face]
      end
    end
  end
end
