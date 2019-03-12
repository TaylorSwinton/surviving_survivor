#require 'nokogiri'
#require 'open-uri'
require 'pry'

class SurvivingSurvivor::ScraperKoah

    def self.scrape_season_information_k
        html = open('https://survivor.fandom.com/wiki/Survivor:_Ka%C3%B4h_R%C5%8Dng')
        doc = Nokogiri::HTML(html)
        binding.pry
    end

    def self.scrape_castaways_k
        
    end

    def self.scrape_episode_k
        
    end
end

class SurvivingSurvivor::ScraperWorlds

    def self.scrape_season_information_w
        
    end

    def self.scrape_castaways_w
        
    end

    def self.scrape_episode_w
        
    end
end
