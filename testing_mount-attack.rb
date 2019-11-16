#Test mount-attack method 
require_relative "methods_cyoa"

# def will_survive_mount_attack(attack_survive)
#     case attack_survive
#     when '4','2'
#         true
#     when '1','3','5','6'
#         false
#     else
#         false
#     end
# end


# def test_mount_attack
#     expected_result = true
#     actual_result = will_survive_mount_attack('3')
#     if expected_result == actual_result
#         puts "PASS"
#     else 
#         puts "FAIL"

#     end 
# end 

# # mount_attack
# test_mount_attack


def get_length
    $mountain_image = txt_image("mountain-pic.txt")
    $mountain_image.length
end 



def test_ascii_image
    expected_result = 10
    actual_result = get_length
    if expected_result < actual_result
        puts "PASS"
    else 
        puts "FAIL"

    end 
end 
test_ascii_image