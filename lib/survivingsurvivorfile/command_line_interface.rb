#require_relative "../lib/scraper.rb"
#require_relative "" <-- put whatever extra files you need 
#require 'nokogiri'

class SurvivingSurvivor::CommandLineInterface

    def call
        input = ''
        while input != 'exit'
            puts "So you want to Survive Survivor?"
            puts "Outwit, outplay, and outlast with all the Survivor details"
            puts "Please choose a season by entering your numbered choice (1/2)."
            list_seasons
            input = gets.strip
            if input != 1 || 2
                puts "Please enter a numeric choice or 'exit'." #Create a meta error
            elsif input == 1
                survivorkoahrong
            else input == 2
                survivorworldsapart
            end
        end
    end

    def list_seasons
        puts "1. Survivor: Kaôh Rōng — Brains vs. Brawn vs. Beauty"
        puts "2. Survivor: Worlds Apart — White Collar vs. Blue Collar vs. No Collar"
    end

    def survivorkoahrong
        input = ''
        while input != 'exit'
            puts "Welcome to Kaôh Rōng!"
            puts "Where the division of the tribes is based on the most prominent personal attributes of each castaway."
            puts "What else do you want to know about surviving Kaôh Rōng?"
            puts "To see general season information type 'info'"
            puts "To see the castaways type 'castaways'"
            puts "To see the names of the episodes and who was elimanted type 'episode'"
            puts "Choose an option below:"

            input = gets.strip

            same = input.downcase
            case same
            when 'info'
                ##
            when 'castaways'
                ##
            when 'episode'
                ##
            end
        end
    end
    
    def survivorworldsapart
        input = ''
        while input != 'exit'
            puts "Welcome to Kaôh Rōng!"
            puts "Where the division of the tribes is based on the most prominent personal attributes of each castaway."
            puts "What else do you want to know about surviving Kaôh Rōng?"
            puts "To see general season information type 'info'"
            puts "To see the castaways type 'castaways'"
            puts "To see the names of the episodes and who was elimanted type 'episode'"
            puts "Choose an option below:"

            input = gets.strip
            
            same = input.downcase
            case same
            when 'info'
                ##
            when 'castaways'
                ##
            when 'episode'
                ##
            end
        end
    end

end