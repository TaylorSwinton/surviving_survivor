class Season
    attr_accessor :version, :seasonnumber, :filmlocation, :filmdates, :seasonrun, :noofepi, :noofdays, :noofcastaways, :winner, :runnerup, :tribes, :viewship
    attr_reader :name

    @all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def season_details(version, seasonnumber, location, dates, seasonrun, noofepi, noofdays, noofcastaways, winner, runnerup, tribes, viewship)
        @version = version
        @seasonnumber = seasonnumber
        @location = location
        @dates = dates
        @seasonrun = seasonrun
        @noofepi = noofepi
        @noofdays = noofdays
        @noofcastaways = noofcastaways
        @winner = winner
        @runnerup = runnerup
        @tribes = tribes
        @viewship = viewship
    end

    def self.all
        @@all
    end
end