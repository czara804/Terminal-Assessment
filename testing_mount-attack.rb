#Test mount-attack method 
require_relative "methods_cyoa"
require "tty-prompt"


def mount_attack(number)
# prompt = TTY::Prompt.new
# attack_survive = prompt.select("Pick a number to see your chance of survival",%w(1 2 3 4 5 6))
attack_survive = number.to_s
        case attack_survive
        when '4','2'
            puts "Lucky you have companions like yours! As you fight your way through the army and make it out of the mountain. Damn, you've got skills. You see Dr. Tempestas' castle and sigh with collective relief. Walk on!"
        when '1','3','5','6'
            puts "You launch the first attack but your group quickly becomes overwhelmed, there's just too many! Is this how it ends?
            Unfotunately, yes. You die a valiant death in battle."
        end 
end 

def test_mount_attack
    expected_result = "Lucky you have companions like yours! As you fight your way through the army and make it out of the mountain. Damn, you've got skills. You see Dr. Tempestas' castle and sigh with collective relief. Walk on!"
    actual_result = mount_attack(2)
    if expected_result == actual_result
        puts "PASS"
    else 
        puts "FAIL"

    end 
end 

# mount_attack
puts mount_attack(2)
test_mount_attack


