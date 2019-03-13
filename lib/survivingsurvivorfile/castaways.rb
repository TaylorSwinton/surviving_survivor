class Castaway
    attr_accessor :born, :hometown, :occupation, :tribe, :finished, :votesagainst, :dayslasted, :profile_url
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