#Tests
require_relative "methods_cyoa"

# def test_mount_attack
#     expected_result = true
#     actual_result = will_survive_mount_attack('6')
#     if expected_result == actual_result
#         puts "PASS"
#     else 
#         puts "FAIL"

#     end 
# end 

# # mount_attack
# puts "survive(6)"
# test_mount_attack


def test_ascii_image
    expected_result = 100
    actual_result = txt_image("mountain-pic.txt").length
    if actual_result > expected_result
        puts "PASS"
    else 
        puts "FAIL"

    end 
end 
puts "test image, compare to mountain-pic, actual result > expected"
test_ascii_image

def test_failed_ascii_image
    expected_result = 100
    actual_result = txt_image("notarealimage.txt").length
    if actual_result < expected_result
        puts "PASS"
    else 
        puts "FAIL"

    end 
end 
puts "negative test = notarealimage.txt, actual result < expected"
test_failed_ascii_image