class ScraperKoah

    CAST = 'https://www.cbs.com/shows/survivor/cast/season/32/' #koahrong
    SEASON = 'https://survivor.fandom.com/wiki/Survivor:_Ka%C3%B4h_R%C5%8Dng' #koahrong
    SITE = 'https://www.cbs.com'
    CASTW = ''
    SEASONW = ''

    def self.scrape_season_information_k
        file = open(SEASON)
        doc = Nokogiri::HTML(file)

        version = doc.css("aside").css("section").first.css("div").first.css("div").text
        seasonnumber = doc.css("aside").css("section")[0].css("div")[2].css("div").text
        filmlocation= doc.css("aside").css("section")[0].css("div")[4].css("div").text
        filmdates = doc.css("aside").css("section")[0].css("div")[6].css("div").text
        seasonrun = doc.css("aside").css("section")[0].css("div")[8].css("div").text
        noofepi = doc.css("aside").css("section")[0].css("div")[10].css("div").text
        noofdays = doc.css("aside").css("section")[0].css("div")[12].css("div").text
        noofcastaways = doc.css("aside").css("section")[0].css("div")[14].css("div").text
        winner = doc.css("aside").css("section")[0].css("div")[16].css("div").text
        runnerup = doc.css("aside").css("section")[0].css("div")[18].css("div").text #need to be seperated
        tribes = doc.css("aside").css("section")[0].css("div")[20].css("div").text #need to be seperated
        viewship = doc.css("aside").css("section")[0].css("div")[22].css("div").text

        #binding.pry
    end

    def self.scrape_castaways_k
        file = open(CAST)
        doc = Nokogiri::HTML(file)
        #binding.pry

        castaways = doc.css("article")
        castaways.drop(1).each do |castaway|
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
