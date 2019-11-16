require "colorize"
require "tty-prompt"
require "artii"
require "faker"

require_relative "methods_cyoa"

name = ARGV[0]
puts "Hi #{name}, ready to play? Let's do it"



$mountain_image = txt_image("mountain-pic.txt")
$castle_image = txt_image("castle-pic.txt")

$companions_groups = { :matrix => ['Neo', 'Morpheus', 'Trinity'], :hogwarts => ['Ron', 'Hermione', 'Neville'], :company => ['Gandalf', 'Thorin', 'Elrond']}

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
    introduction
    path_choice
    while (troll_choice == "flight")
        path_choice
    end
    mountains
    castle_door
    pills

end

def exit_routine
    puts "TIME TO GO"
    exit
end

exit_routine