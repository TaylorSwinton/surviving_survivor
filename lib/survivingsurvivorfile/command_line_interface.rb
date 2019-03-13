#require_relative "../lib/scraper.rb"
#require_relative "" <-- put whatever extra files you need 
#require 'nokogiri'

class CommandLineInterface

    def call
        
        ScraperKoah.scrape_season_information_k
        ScraperKoah.scrape_castaways_k
        ScraperKoah.castaways_details_k
        ScraperWorlds.scrape_season_information_w
        ScraperWorlds.scrape_castaways_w
        ScraperWorlds.castaways_details_w

        input = ''
        while input != 'exit'
            puts "So you want to survive Survivor?"
            puts "Outwit, outplay, and outlast with all the Survivor details"
            puts "Please choose a season by entering 'koah' or 'worlds'. If you would like to exit type 'exit'"
            list_seasons

            input = gets.strip
            same = input.downcase
            
            case same
            when 'koah'
                survivorkoahrong
            when 'worlds'
                survivorworldsapart
            end
        end
    end

    def list_seasons
        puts "  1. Survivor: Kaôh Rōng — Brains vs. Brawn vs. Beauty"
        puts "  2. Survivor: Worlds Apart — White Collar vs. Blue Collar vs. No Collar"
    end

    def survivorkoahrong
        input = ''
        while input != 'exit'
            puts "Welcome to Kaôh Rōng!"
            puts "Where the division of the tribes is based on the most prominent personal attributes of each castaway."
            puts "What else do you want to know about surviving Kaôh Rōng?"
            puts "  To see general season information type 'info'"
            puts "  To see the castaways type 'castaways'"
            puts "  To see the names of the episodes and who was elimanted type 'episode'"
            puts "Enter your choice below or exit by typing 'exit':"

            input = gets.strip

            same = input.downcase
            case same
            when 'info'
                info_koah
            when 'castaways'
                castaways_koah
            when 'episode'
                episode_koah
            end
        end
    end
    
    def survivorworldsapart
        input = ''
        while input != 'exit'
            puts "Welcome to Kaôh Rōng!"
            puts "Where the division of the tribes is based on the most prominent personal attributes of each castaway."
            puts "What else do you want to know about surviving Kaôh Rōng?"
            puts "  To see general season information type 'info'"
            puts "  To see the castaways type 'castaways'"
            puts "  To see the names of the episodes and who was elimanted type 'episode'"
            puts "Choose an option below or exit by typing 'exit':"

            input = gets.strip
            
            same = input.downcase
            case same
            when 'info'
                info_worlds
            when 'castaways'
                castaways_worlds
            when 'episode'
                episode_worlds
            end
        end
    end

    def info_koah
        #should pull the 'season information'
        #shoudld show the :version, :seasonno, :Filiminglocation, :filimingdates, :seasonrun, :noofepisodes, :noofdays, :noofcastaways, :winner, :runnerup, :tribes, :viership
    end

    def castaways_koah
        #display_cast
        #should list their name
        #should list their age
        #should list their location
        #should list their job
        #should list their original tribe
        #should list how they finished
        #should list the votes against them
    end

    def episode_koah
        #should list episode name
        #should list episode air date
        #should list who was eliminated
    end

    def info_worlds
         #should pull the 'season information'
        #shoudld show the :version, :seasonno, :Filiminglocation, :filimingdates, :seasonrun, :noofepisodes, :noofdays, :noofcastaways, :winner, :runnerup, :tribes, :viership
    end

    def castaways_worlds
        #should list their name
        #should list their age
        #should list their location
        #should list their job
        #should list their original tribe
        #should list how they finished
        #should list the votes against them
    end

    def episode_koah
        #should list episode name
        #should list episode air date
        #should list who was eliminated
    end

end