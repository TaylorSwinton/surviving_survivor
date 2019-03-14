class Castaway
    attr_accessor :age, :hometown, :occupation, :tribe, :inspiration, :describe, :profile_url
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
end