class ScraperKoah

    WIKI = 'https://en.wikipedia.org/wiki/Survivor:_Ka%C3%B4h_R%C5%8Dng'

    def self.scrape_season_information_k
     #   file = open(WIKI)
     #   doc = Nokogiri::HTML(file)

        #Version: 
        #Season Number:
        #Film Location:
        #Film Dates:
        #Season Run:
        #Number of Episodes:
        #Number of Days:
        #Number of Castaways:
        #Winner:
        #Runnerup:
        #Tribes:
        #Viewership:
        #Name of Castawys:
    end

    def self.scrape_castaways_k
        file = open(WIKI)
        doc = Nokogiri::HTML(file)
        #Darnell Hamilton = doc.css("tbody")[1].css("tr")[1].css("b").text
        #binding.pry


        castaways = doc.css("tbody")[1].css("tr").css("b")
        castaways.each do |castaway|
            name = castaway
            profile_url = ""
            Castaway.new(name).tap {|cast| cast.profile_url = profile_url}
        end
    end

    def self.castaways_details_k
        
    end
end

class ScraperWorlds

    def self.scrape_season_information_w
        
    end

    def self.scrape_castaways_w
        
    end

    def self.castaways_details_w
        
    end
end
