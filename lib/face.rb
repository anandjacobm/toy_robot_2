module Lib
  class Face

    attr_accessor :name

    NORTH = 'NORTH'.freeze
    EAST = 'EAST'.freeze
    SOUTH = 'SOUTH'.freeze
    WEST = 'WEST'.freeze
    FACES = [NORTH, EAST, SOUTH, WEST].freeze

    def initialize
      @name = nil
    end

    # sets the face name left to the existing face
    def face_to_left
      @name = FACES[FACES.index(name) - 1]
    end

    # sets the face name right to the existing face
    def face_to_right
      @name = FACES[(FACES.index(name) + 1) % FACES.length]
    end

    # to check whether the given face is a valid one as per the list
    def valid_face?(face)
      FACES.include? face
    end
  end
end
