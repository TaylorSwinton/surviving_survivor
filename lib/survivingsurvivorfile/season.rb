class Season
    attr_accessor :version, :seasonnumber, :filmlocation, :filmdates, :seasonrun, :noofepi, :noofdays, :noofcastaways, :winner, :runnerup, :tribes, :viewship
    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end