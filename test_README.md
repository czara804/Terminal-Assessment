## Tests 
CYOA: Nimbifer

**The first test is for the mount_attack method found in the mountains method.**

The method requires 2 numbers, 2 or 4, to pass the test (true) for the control flow of this stage to function appropriately. The test takes an integer as an argument and returns whether the input will pass or fail so this can be used within the method. 

```Ruby
require_relative "methods_cyoa"

def will_survive_mount_attack(attack_survive)
    case attack_survive
    when '4','2'
        true
    when '1','3','5','6'
        false
    else
        false
    end
end


def test_mount_attack
    expected_result = true
    actual_result = will_survive_mount_attack('3')
    if expected_result == actual_result
        puts "PASS"
    else 
        puts "FAIL"

    end 
end 

# mount_attack
test_mount_attack

```
The output below shows the result of different parameters:
![mount attack test output](mount_attack_output.png)

**The second test is to ensure the images, called from txt files are being read appropriately.** 

This test checks whether the string length is appropriate for the ascii art. Text files containing ascii art should be longer than 100 characters. The negative test checks if a fake image passes the test where it is shorter than expected value. 


```Ruby
def test_ascii_image
    expected_result = 100
    actual_result = txt_image("mountain-pic.txt").length
    if actual_result > expected_result
        puts "PASS"
    else 
        puts "FAIL"

    end 
end 
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
test_failed_ascii_image

```

![ascii art test output](ascii_image_output.png)