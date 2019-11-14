riddle_answer = "xxx"
answer = ""
max = 3
count = 1

while ((answer != riddle_answer) && (count <= max))

    puts "question..."
    answer = gets.chomp
    count += 1

end

if (answer != riddle_answer)
    puts "you got it wrong"
else
    puts "correct"
end