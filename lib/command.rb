require_relative 'commands/left'
require_relative 'commands/place'
require_relative 'commands/move'
require_relative 'commands/report'
require_relative 'commands/right'
module Lib
  class Command

    PLACE = 'PLACE X,Y,FACE'.freeze
    MOVE = 'MOVE'.freeze
    RIGHT = 'RIGHT'.freeze
    LEFT = 'LEFT'.freeze
    REPORT = 'REPORT'.freeze
    COMMANDS_LIST = [PLACE, MOVE, RIGHT, LEFT, REPORT].freeze

    def self.to(command, robot, table, args)
      klass = "Lib::Commands::#{command.downcase.capitalize}"
      Object.const_get(klass).new(robot, table, args)
    rescue NameError => e
      raise StandardError, 'unrecognized command'
    end
  end
end

