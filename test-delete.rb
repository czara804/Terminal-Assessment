require 'artii'

r = Artii::Base.new
arr = r.all_fonts

arr.each do |key,value|
    r = Artii::Base.new :font => key
    puts (r.asciify("Blue Pill") + " " + key)
end

# riddle_answer = "xxx"
# answer = ""
# max = 3
# count = 1

# while ((answer != riddle_answer) && (count <= max))

#     puts "question..."
#     answer = gets.chomp
#     count += 1

# end

# if (answer != riddle_answer)
#     puts "you got it wrong"
# else
#     puts "correct"
# end