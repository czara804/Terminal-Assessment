require "colorize"
require "tty-prompt"
require "artii"
require "faker"

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

    def set_animal_resuce(choice)
        @animal_rescue = choice
    end 

end 


$prompt = TTY::Prompt.new
$prompt.yes?("Welcome Adventurer! Would you like to complete a quest?")
puts "Well then, as the Doctor would say, #{Faker::TvShows::DrWho.catch_phrase}"
response_name = $prompt.ask("What is your name, curious character?", default: 'Harry Potter')
companions_choice = $prompt.select("What is a quest without some companions? Please select who you would like to accompany you:", companions_groups)


$user1 = User.new(response_name, companions_choice)
puts $user1.get_companions
puts "Alright, #{$user1.get_name}, now that you've got some companions, I'm gifting you with a map to Dr. Tempestas castle. Let's get started!"

puts "You and your companions have set out to see the famed but reclusive Climate Scientist Dr. Elsa Tempestas. She has a secret pass phrase you must recover to start a carbon-fixing machine that will halt the superheating of the Earth.
You have reached a fork in the road. To the left is a long and winding road reaching towards the horizon and to the right is an aged forest path, twining between tall trees."



def path_choice
pathway = $prompt.select("Which way do you go?", %w(Long_road Forest_path))
case pathway
    when "Long_road"
    puts "All of a sudden a storm rolls in:"
    r = Artii::Base.new :font => 'slant'
    puts r.asciify('RainHailThunder&Lightening')
    puts "The storm rages, lightning strikes on the road right in front of your group! Only you and #{$user1.random_companion} are left as you run down the road towards a river and a bridge."
    when "Forest_path"
    puts "You come across an injured #{animal = Faker::Creature::Animal.name}" 
    animal_rescue = $prompt.select("Do you want to help #{animal} out?", "Sure", "No time, I'm on a quest")
        if animal_rescue == "Sure"
            $user1.set_animal_resuce=(yes)
        else 
            $user1.set_animal_resuce=(no)
        end 

    puts "Dappled light is coming through the trees but it feels like something might be watching you in the shadows. You hurry along as #{$user1.random_companion} says they can see an exit up ahead. You come out of the of the forest and see a bridge."
    end 
end 

puts path_choice


puts "The wooden bridge is covered in vines and after you consult the map, you determine in it is the correct way to go. As you you take your first step onto the bridge, a troll appears"

troll_choice = $prompt.select("Ah a troll! Should you stay and fight or take flight?", %w(Fight Flight))

case troll_choice
    when "Fight" 
    puts "You stand your ground. The troll says you will need to answer a riddle and he will give you 3 attempts before something ghastly will happen"
        # 3.times 
            # riddle 

    when "Flight"
    puts "Not liking your chances, you grab your companions and make a run for it. You run and run and run. And happen to run straight into a magic portal that spits you out...... right back on your initial path."
    # call pathway_choice method

end 




# def troll_method(choice)











#//////////////////////////////////////
# case companions_choice
# when "Neo/Morpheus/Trinity"
#     user1.set_companions=(MATRIX)
#     puts "Throughout human history, we have been dependent on machines to survive. Fate, it seems, is not without a sense of irony."
# when "Ron/Hermione/Neville"
#     user1.set_companions=(HARRYPOTTER)
#     puts Faker::Movies::HarryPotter.quote
# when "Gandalf/Thorin/Elrond"
#     user1.set_companions=(COMPANY)
#     puts Faker::Movies::Hobbit.quote
# end 

# if companions_choice == 'Neo/Morpheus/Trinity'
#     user1.set_companions(MATRIX)
# elsif companions_choice == 'Ron/Hermione/Neville'
#     user1.set_companions(HARRYPOTTER)
# elsif companions_choice == 'Gandalf/Thorin/Elrond'
#     user1.set_companions(COMPANY)
# end