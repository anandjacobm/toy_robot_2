module Lib
  # Robot.new for initializing the class
  class Robot

    attr_accessor :x, :y, :face

    def initialize(face)
      @x = nil
      @y = nil
      @face = face
    end

    # returns true if x,y,face of robot is not nil, which means robot is placed
    def placed?
      !x.nil? & !y.nil? && !face.name.nil?
    end

    def check_robot_status
      raise CustomError, 'Robot not placed yet' unless placed?
    end
  end
end
