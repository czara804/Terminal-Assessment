require "colorize"
require "tty-prompt"
require "artii"
require "faker"

companions_groups = { :matrix => ['Neo', 'Morpheus', 'Trinity'], :hogwarts => ['Ron', 'Hermione', 'Neville'], :company => ['Gandalf', 'Thorin', 'Elrond']}

class User
    @username 
    @companions
  

    def initialize(username, companions)
    @username = username
    @companions = companions
    end 

    def set_companions(companions1)
    @companions = companions1
    end 

    def get_companions
    @companions
    end 

end 


prompt = TTY::Prompt.new
prompt.yes?("Welcome Adventurer! Would you like to complete a quest?")
puts "Well then, #{Faker::TvShows::DrWho.catch_phrase}"
response_name = prompt.ask("What is your name, curious character?", default: 'Harry Potter')
companions_choice = prompt.select("What is a quest without some companions? Please select who you would like to accompany you:", companions_groups)


user1 = User.new(response_name, companions_choice)
puts user1.get_companions

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

# puts "Alright, #{response_name}, grab your companions and let's get started!"


