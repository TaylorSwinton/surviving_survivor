class CommandLineInterface

    def call
        welcome
        list_seasons
        user_choice
    end

    def welcome
        s = Artii::Base.new :font => 'slant'
        puts s.asciify('Surviving Survivor').red
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".red
        puts "So you want to survive Survivor?"
        puts "Outwit, outplay, and outlast with all the Survivor details"
        puts "Please choose a season by entering 'koah' or 'mil'. If you would like to exit type 'exit'"
    end

    def list_seasons
        puts "  1. Survivor: Kaôh Rōng — Brains vs. Brawn vs. Beauty"
        puts "  2. Survivor: Millennials vs. Gen X"
    end

    def user_choice
            input = gets.strip
            same = input.downcase
            
                if same == 'exit'
                    exit
                elsif same == 'koah'
                    survivorkoahrong
                elsif same == 'mil'
                    survivormilvsgen
                else
                    puts "I don't understand, please choose a season!!".red
                    list_seasons
                    self.user_choice
                end
    end

    def survivorkoahrong
            puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".red
            puts "Welcome to Kaôh Rōng!"
            puts "Where the division of the tribes is based on the most prominent personal attributes of each castaway."
            puts "What else do you want to know about surviving Kaôh Rōng?"
            puts "  To see general season information type 'info'"
            puts "  To see the castaways type 'castaways'"
            puts "  To go back to the main menu type 'menu'"
            puts "Enter your choice below or exit by typing 'exit':"

            input = gets.strip

            same = input.downcase

            if same == 'exit'
                exit
            elsif same == 'info'
                info_koah
            elsif same == 'castaways'
                castaways_koah
            elsif same == 'menu'
                call
            else
                puts "I don't understand, please pick a valid choice.".red
                survivorkoahrong
            end
    end
    
    def survivormilvsgen
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".red
        puts "Welcome to Millennials vs. Gen X!"
        puts "Where the division of the tribes were divided based on generation: Millennials vs. Gen X."
        puts "What else do you want to know about surviving Millennials vs. Gen X?"
        puts "  To see general season information type 'info'"
        puts "  To see the castaways type 'castaways'"
        puts "  To go back to the main menu type 'menu'"
        puts "Enter your choice below or exit by typing 'exit':"

        input = gets.strip

        same = input.downcase

        if same == 'exit'
            exit
        elsif same == 'info'
            info_mil
        elsif same == 'castaways'
            castaways_mil
        elsif same == 'menu'
            call
        else
            puts "I don't understand, please pick a valid choice.".red
            survivormilvsgen
        end
    end

    def scraped_data_info_k
        @scraped_data_info_k ||= ScraperKoah.scrape_season_information_k
    end

    def info_koah
        Season.clear
        scraped_data_info_k
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".red
        puts "SEASON INFORMATION:"

        Season.all.each do |info|
            puts "#{info.name}"
            puts "  Version:  #{info.version}"
            puts "  Season Number:  #{info.seasonnumber}"
            puts "  Film Location:  #{info.filmlocation}"
            puts "  Film Dates:  #{info.filmdates}"
            puts "  Season Run:  #{info.seasonrun}"
            puts "  Number of Episodes:  #{info.noofepi}"
            puts "  Number of Days:  #{info.noofdays}"
            puts "  Number of Castaways:  #{info.noofcastaways}"
            puts "  Winner:  #{info.winner}"
            puts "  Viewership in Millions:  #{info.viewship}"
        end
        puts "To exit type 'exit'"
        puts "To see more choices about Survivor Kaôh Rōng type 'koah'"
        puts "To see go back to the main menu type 'menu'"
        input = gets.strip

        if input == 'exit'
            exit
        elsif input == 'koah'
            survivorkoahrong
        elsif input == 'menu'
            call
        else
            puts "I don't understand, please pick a valid choice.".red
            info_koah
        end
    end

    def scraped_data_cast_k
        @scraped_data_cast_k ||= ScraperKoah.scrape_castaways_k
    end

    def castaways_koah
        scraped_data_cast_k
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".red
        puts "CASTAWAYS Kaôh Rōng: "
        puts "To see more details about the castaways type their number:"
        Castaway.all.each_with_index do |cast, index|
            #binding.pry
            puts "  #{index+1}. #{cast.name}"
        end
                
        input = gets.strip
        cast = Castaway.all[input.to_i-1]

        if cast == nil 
            puts "please enter a number for your choice of Castaways"
            self.castaways_koah
        else
            ScraperKoah.castaways_details_k(cast)
        end

        castaways_koah_details(cast)
    end

    def castaways_koah_details(cast)
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".red
        puts "Your castaway choice: "
        puts cast.age
        puts cast.hometown
        puts cast.occupation
        puts cast.tribe
        puts cast.inspiration
        puts cast.describe
        puts ""
        puts "To exit type 'exit'"
        puts "To select another Castaway type 'castaways'"
        puts "To see more choices about Survivor Kaôh Rōng type 'koah'"
        puts "To see go back to the main menu type 'menu'"
        input = gets.strip

        case input
        when 'castaways'
            castaways_koah
        when 'koah'
            survivorkoahrong
        when 'menu'
            call
        end
    end

    def scraped_data_info_m
        @scraped_data_info_m ||= ScraperMil.scrape_season_information_m
    end

    def info_mil
        Season.clear
        #binding.pry
        scraped_data_info_m
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".red
        puts "SEASON INFORMATION:"

        Season.all.each do |info|
            puts "#{info.name}"
            puts "  Version:  #{info.version}"
            puts "  Season Number:  #{info.seasonnumber}"
            puts "  Film Location:  #{info.filmlocation}"
            puts "  Film Dates:  #{info.filmdates}"
            puts "  Season Run:  #{info.seasonrun}"
            puts "  Number of Days:  #{info.noofdays}"
            puts "  Number of Castaways:  #{info.noofcastaways}"
            puts "  Winner:  #{info.winner}"
        end
        
        puts "To exit type 'exit'"
        puts "To see more choices about Survivor Millennials vs. Gen X type 'mil'"
        puts "To go back to the main menu type 'menu'"
        input = gets.strip
        
        case input
        when 'mil'
            survivormilvsgen
        when 'menu'
            call
        end
    end

    def scraped_data_cast_m
        @scraped_data_cast_m ||= ScraperMil.scrape_castaways_m
    end

    def castaways_mil
        scraped_data_cast_m
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".red
        puts "CASTAWAYS Millennials vs. Gen X: "
        puts "To see more details about the castaways type their number:"
        Castaway.all.each_with_index do |cast, index|
            puts "  #{index+1}. #{cast.name}"
        end
        
        input = gets.strip
        cast = Castaway.all[input.to_i-1]

        if cast == nil 
            puts "please enter a number for your choice of Castaways"
            self.castaways_mil
        else
            ScraperMil.castaways_details_m(cast)
        end

        castaways_mil_details(cast)
    end

    def castaways_mil_details(cast)
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".red
        puts "Your castaway choice: "
        puts cast.name
        puts ''
        puts cast.age
        puts ''
        puts cast.hometown
        puts ''
        puts cast.occupation
        puts ''
        puts cast.tribe
        puts cast.inspiration
        puts cast.describe
        puts ""
        puts "To exit type 'exit'"
        puts "To select another Castaway type 'castaways'"
        puts "To see more choices about Survivor Millennials vs. Gen X type 'mil'"
        puts "To see go back to the main menu type 'menu'"
        input = gets.strip

        case input
        when 'castaways'
            castaways_mil
        when 'mil'
            survivormilvsgen
        when 'menu'
            call
        end
    end

end