module Lib
  class ParseInput

    # to change input to the desired format and returns command and args if any
    def self.parse(input)
      clear_input = input.gsub(',', ' ').split
      command = clear_input[0]
      args = {}
      unless clear_input[1..].empty?
        args[:x] = clear_input[1].to_i
        args[:y] = clear_input[2].to_i
        args[:face] = clear_input[3]
      end
      [command, args]
    end
  end
end
