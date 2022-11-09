# Table.new(x,y) to initialize a table
module Lib
  class Table
    attr_accessor :x, :y

    DEFAULT_X = 5
    DEFAULT_Y = 5

    def initialize(x = DEFAULT_X, y = DEFAULT_Y)
      @x = x
      @y = y
    end

    # returns true if a given x,y coordinate is inside the table
    def valid_point?(point_x, point_y)
      (0...x).cover?(point_x) && (0...y).cover?(point_y)
    end
  end
end
