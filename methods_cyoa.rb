# Methods

require "colorize"
require "tty-prompt"
require "artii"
require "faker"


def introduction
    $prompt = TTY::Prompt.new
    puts "Welcome Adventurer! We need your help. It's time to complete a quest!"
    puts "and, as the Doctor would say, #{Faker::TvShows::DrWho.catch_phrase}"
    response_name = $prompt.ask("What is your name, curious character?", default: 'Harry Potter')
    companions_choice = $prompt.select("What is a quest without some companions? Please select who you would like to accompany you:", $companions_groups)
    
    $user1 = User.new(response_name, companions_choice)
    puts $user1.get_companions
    puts "____________________________________________________________________________________________________________"
    puts "Alright, #{$user1.get_name}, now that you've got some companions, I'm gifting you with a map to Dr. Tempestas castle. Let's get started!"
    #insert map
    
    puts "You and your companions have set out to see the famed but reclusive Climate Scientist Dr. Elsa Tempestas. She has a secret pass phrase you must recover to start a carbon-fixing machine that will halt the superheating of the Earth.
    ___________________________________________________________________________________________________"
    end 


def path_choice
    puts "You have reached a fork in the road. To the left is a long and winding road reaching towards the horizon and to the right is an aged forest path, twining between tall trees."
    pathway = $prompt.select("Which way do you go?", %w(Long_road Forest_path))
    case pathway
        when "Long_road"
        puts "All of a sudden a storm rolls in:"
        r = Artii::Base.new :font => 'slant'
        puts r.asciify('RainHailThunder&Lightning')
        puts "The storm rages, lightning strikes on the road right in front of your group! Only you and #{$user1.random_companion} are left as you run down the road towards a river and a bridge."
        when "Forest_path"
        puts "You come across an injured #{animal = Faker::Creature::Animal.name}" 
        animal_rescue = $prompt.select("Do you want to help #{animal} out?", "Sure", "No time, I'm on a quest")
            if animal_rescue == "Sure"
                $user1.set_animal_resuce=("yes")
                puts "They tell you to make it through the mountain, the answer to all things is 4 2."
            else 
                $user1.set_animal_resuce=("no")
            end 
    
        puts "Dappled light is coming through the trees but it feels like something might be watching you in the shadows. You hurry along as #{$user1.random_companion} says they can see an exit up ahead. You come out of the of the forest and see a bridge."
        end 
    end 
    
    
    
    def troll_choice
    puts "The wooden bridge is delapidated but after you consult the map, you determine in it is the correct way to go. As you you take your first step onto the bridge, a troll appears!"
    t = Artii::Base.new :font => 'slant'
    puts t.asciify('Troll!')
    troll_choice = $prompt.select("Troll in the dunge....I mean bridge. Should you stay and fight or take flight?", %w(Fight Flight))
        case troll_choice
            when "Fight" 
            puts "You stand your ground. The troll says you will need to answer a riddle and he will give you 3 attempts before something ghastly will happen"
            puts "The troll says 
                    Only one color, but not one size,
                    Stuck at the bottom, yet easily flies,
                    Present in sun, but not in rain,
                    Doing no harm, and feeling no pain.
                    What am I?"
                    # riddle 
                    riddle_answer = "shadow"
                    answer = ""
                    3.times do puts "What is the solution?"
                        answer = gets.chomp
                        if answer == riddle_answer
                            puts "Correct! The troll allows you to pass"  
                            break
                        else answer == false
                        end 
                    end 
                    #if (solved == false)
                    if (answer != riddle_answer)
                        puts "Unfortunately, you have run out of attempts. Angered, the troll causes the bridge to collapse and you are eaten by a congreation of alligators."
                        exit
                    end
                "fight"
            when "Flight"
            puts "Not liking your chances, you grab your companions and make a run for it. You run and run and run and happen to run straight into a magic portal that spits you out...... right back on your initial path."
            #puts path_choice
            "flight"
            
        end 
    end 
    
    # mountain_choice 
    
    def eagles_nest
        puts "You reach The Eagles Eyrie. You share the reason for your quest and the giant eagle offers to fly you to the castle from their nest. Use your wisdom and wit to prove your worth and solve the eagle's test.\n
        This thing all things devours;
        Birds, beasts, trees, flowers;
        Gnaws iron, bites steel;
        Grinds hard stones to meal;
        Slays king, ruins town,
        And beats mountain down."
        answer = "time"
        eagle_guess = gets.chomp
        if answer == eagle_guess
            "A wise character indeed, the eagle flys your group to the castle of Dr. Tempestas"
        else 
            puts "You will need to walk on foot as the eagle has determined that you are unwise. #{$user1.random_companion} suggests a path down.
            You hear a rumble:"
            ru = Artii::Base.new
            puts ru.asciify('Rumble')
            puts "boulders start raining down up on you! You dodge but then slip and bounce down the mountain, resulting in death as you land on the jagged rocks below."
            exit
        end 
    end 
    
    def mount_attack
        puts "You step into the mountain and follow the flickering flames through a tunnel that opens into a cavern. It is quiet. Too quiet. All of a sudden you realise you are surrounded by strange creatures. They say they are #{Faker::TvShows::DrWho.specie}. #{$user1.random_companion} thinks you can fight your way out."
        attack_survive = $prompt.select("Pick a number to see your chance of survival",%w(1 2 3 4 5 6))
            case attack_survive
            when '4','2'
            puts "This is why you have companions like #{$user1.get_companions}, as you fight your way through and make it out of the mountain. Damn, you've got skills. You see Dr. Tempestas' castle and sigh with collective relief. Walk on!"
            when '1','3','5','6'
            puts "#{$user1.random_companion} launches the first attack but your group quickly becomes overwhelmed, there's just too many! Is this how it ends?
            Unfotunately, yes. You die a valiant death in battle."
            exit
            end 
    end 
    
    def mountains
        puts "Afterwards, you turn around and each of your companions is behind you! Interesting, but it is a quest. #{$user1.each_companion_name} are discussing how far it is to the castle. #{$user1.random_companion} thinks it must be about #{Faker::Space.distance_measurement}. But first, you have get past Mount Escendo!"
        puts $mountain_image
        mountain = $prompt.select("The map indicates you can go through the mountain but there are rumours of a strange species that have been lurking in the forest that have come from Mt. Escendo. You could go around but this may take longer and the rocky path is narrow and treacherous.", %w(through_mountain around_mountain))
        case mountain
            when "through_mountain" 
                puts mount_attack
            when "around_mountain"
                puts eagles_nest
            end 
    end 
    
    def cluthing(password,max_num)    
            answer = ""
            max = 5
            count = 1
        
            while ((answer != password) && (count <= max))
                puts "What is the password?"
                answer = gets.chomp
                count += 1
            end
            answer
    end
    
    def castle_door
        puts $castle_image
        puts "You've reached the castle. The entrance is a large wooden door. The inscription below is on the door."
        i = Artii::Base.new :font => 'smisome1'
        puts i.asciify('higgs boson')
    
        password = 'higgs boson'
    
        answer = cluthing(password,5)

        while(answer != password)

            clue = $prompt.yes?("Thats not it, would you like a clue?")

            case clue 
            when true
                puts "Have you heard of the God particle?"
                answer = cluthing(password,3)
            when false
                no_clue = $prompt.select("Would you like to continue guessing or exit the game?", %w(keep_guessing leave))
                if no_clue == "leave"
                    exit 
                end
            end

        end
        puts "correct, the door opens"
    end 
     
    def pills
      puts "You find Dr. Tempestas. You ask for the pass-key for the Carbon-Fixing machine"
        pill_choice = $prompt.select("Dr. Tempestas says that you will need to make a choice between two pills to be able to return and enter the pass-key into the machine. This is your last chance. After this, there is no turning back.", %w(red_pill blue_pill))
        case pill_choice
            when "red_pill"
            p = Artii::Base.new :font => 'smkeyboard'
            puts p.asciify("Congratulations!")
            puts "The pass-key is Calvin-Bassham-Benson. 
            Did you know they discovered the Dark Reactions that occur in photosynthesis? The original carbon-fixation."
            $play = false
        
            when "blue_pill"
            puts "the story ends, you wake up in your bed and believe whatever you want to believe. It is just a game after all."
            puts "play again?"
            response = gets.chomp
                if (response == "n")
                    $play = false
                end
            
            end 
    end 
        