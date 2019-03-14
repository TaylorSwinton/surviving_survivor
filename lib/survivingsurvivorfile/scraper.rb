class ScraperKoah

    CAST = 'https://www.cbs.com/shows/survivor/cast/season/32/'
    SITE = 'https://www.cbs.com'
    SEASON = ''
    CASTW = ''
    SEASONW = ''

    def self.scrape_season_information_k
        #file = open(WIKI)
        #doc = Nokogiri::HTML(file)
        #binding.pry

        #version = doc.css("tbody")[0].css("tr")[9].css("td").text
        #seasonnumber = ''
        #filmlocation= doc.css("tbody")[0].css("tr")[7].css("td").text
        #filmdates = doc.css("tbody")[0].css("tr")[15].css("td").text
        #seasonrun = doc.css("tbody")[0].css("tr")[13].css("td").text
        #noofepi = doc.css("tbody")[0].css("tr")[10].css("td").text
        #noofdays = ''
        #noofcastaways = ''
        #winner = doc.css("tbody")[0].css("tr")[6].css("td").text
        #runnerup = ''
        #tribes = ''
        #viewship = ''
    end

    def self.scrape_castaways_k
        file = open(CAST)
        doc = Nokogiri::HTML(file)
        #binding.pry

        castaways = doc.css("article")
        castaways.each do |castaway|
            name = castaway.css(".title").text
            profile_url = castaway.css("a").first["href"]
            #binding.pry
            Castaway.new(name).tap {|cast| cast.profile_url = profile_url}
        end
    end

    def self.castaways_details_k(cast)
        url = SITE + cast.profile_url
        doc = Nokogiri::HTML(open(url))
        
        cast.age = doc.css(".cast-bio").css("p").first.text
        cast.hometown = doc.css(".cast-bio").css("p:nth-child(3)").text
        cast.occupation = doc.css(".cast-bio").css("p:nth-child(4)").text
        cast.tribe = doc.css(".cast-bio").css("p:nth-child(2)").text
        cast.inspiration = doc.css(".cast-bio").css("p:nth-child(6)").text
        cast.describe = doc.css(".cast-bio").css("p:nth-child(9)").text
        #binding.pry
        #castaway.
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
