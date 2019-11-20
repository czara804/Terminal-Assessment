require "colorize"
require "tty-prompt"
require "artii"
require "faker"

require_relative "methods_cyoa"

def play?
    prompt = TTY::Prompt.new
    start = prompt.yes?("Do you want to play Nimbifer?")
    if (start == true)
        $play = true
        # game_play
    elsif (start == false)
        exit_routine
        $play = false
    end
end 

def game_play
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
end

$name = ARGV[0]
puts "Hi #{$name}, you will be responsible for making the decisions from now on. 
Read carefully and use your wit and bravery to reach the end of the quest.
---------------------------------------C.Y.O.A--------------------------------------------------------------"
title = Artii::Base.new :font => 'larry3d'
puts title.asciify("Nimbifer")

# puts play?

$mountain_image = txt_image("mountain-pic.txt")
$castle_image = txt_image("castle-pic.txt")
$storm_image = txt_image("rain.txt")

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
        @companions.join(", ") 
    end 
end 


# def exit_routine
#     puts "Time To Go"
#     puts "To play again copy and paste: ruby cyoa3.rb #{$name} "
#     exit
# end

# "ready to play? Let's do it."
# *******






game_play
exit_routine

