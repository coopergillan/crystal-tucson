module Tucson
  VERSION = "0.1.0"

  class Neighborhood
    property age
    getter name : String

    def initialize(@name)
      @age = 0
    end

    def become_older
      @age += 1
    end
  end
end
