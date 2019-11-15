require "colorize"
require "tty-prompt"
require "artii"
require "faker"

require_relative "methods_cyoa"

def txt_image(filename)
    begin
    result = File.read(filename)
    rescue StandardError => msg
        puts "An error has occurred, can't display image. Play, on!"
        result = ""
    end 
    result
end 

$mountain_image = txt_image("mountain-pic.txt")
$castle_image = txt_image("castle-pic.txt")

companions_groups = { :matrix => ['Neo', 'Morpheus', 'Trinity'], :hogwarts => ['Ron', 'Hermione', 'Neville'], :company => ['Gandalf', 'Thorin', 'Elrond']}

class User
    @username 
    @companions
    @animal_rescue
  

    def initialize(username, companions)
    @username = username
    @companions = companions
    end 

    def get_name
        @username
    end 

    def set_companions(companions1)
    @companions = companions1
    end 

    def get_companions
    @companions
    end 

    def random_companion
        @companions.shuffle.first
    end 

    def set_animal_resuce=(choice)
        @animal_rescue = choice
    end 

    def each_companion_name
        @companions.each do |key,value|
        puts value
            end 
        
    end 

end 


$prompt = TTY::Prompt.new
puts "Welcome Adventurer! We need your help. It's time to complete a quest!"
puts "and, as the Doctor would say, #{Faker::TvShows::DrWho.catch_phrase}"
response_name = $prompt.ask("What is your name, curious character?", default: 'Harry Potter')
companions_choice = $prompt.select("What is a quest without some companions? Please select who you would like to accompany you:", companions_groups)


$user1 = User.new(response_name, companions_choice)
puts $user1.get_companions
puts "____________________________________________________________________________________________________________"
puts "Alright, #{$user1.get_name}, now that you've got some companions, I'm gifting you with a map to Dr. Tempestas castle. Let's get started!"
#insert map

puts "You and your companions have set out to see the famed but reclusive Climate Scientist Dr. Elsa Tempestas. She has a secret pass phrase you must recover to start a carbon-fixing machine that will halt the superheating of the Earth.
You have reached a fork in the road. To the left is a long and winding road reaching towards the horizon and to the right is an aged forest path, twining between tall trees."



# *******

#order
#introduction
# puts path_choice
# puts troll_choice
# puts mountains
# puts castle_door
# puts pills

$play = true
while ($play)

    path_choice
    while (troll_choice == "flight")
        path_choice
    end
    mountains
    castle_door
    pills

end

def exit_routine
    puts "BYE"
    exit
end

exit_routine