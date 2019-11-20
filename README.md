### Software Development Plan
Choose Your Own Adventure: *Nimbifer*

**Table of Contents**
- Statement of Purpose & Scope
- Features
- User Interaction & Experience 
- Flow Chart
- Install Instructions 
- Help File 

**Statement of Purpose and Scope** 

Choose Your Own Adventure: Nimbifer is a single-player adventure game with a written format that runs in the terminal. The user directs the flow of the adventure through choices that result in a branching narrative, with an overarching goal of reaching a final endpoint as motivation. The user is prompted to input their choices via menu selection, and they solve riddles via key selection to move through stages of the game. Some choices will lead to ‘death’ and exit from the story without achieving the overarching goal upon which users will have an option to replay. The user ‘wins’ when they have reached the final stage and retrieved a phrase that ties into the narrative. 

The application has been developed with the purpose of gameplay. It was designed as part of a resurgent trend of puzzle and logic games, along with physical escape rooms, for an audience ranging from teenagers to adults. Due to the level of literacy required, it is suggested the user is a minimum age of 9-10 years old, though this is not strictly required. To enhance story flow and to flag main decision points where the user action is required, ascii art is incorporated into the narrative, in the style of visual storytelling. These images have been sourced from Ascii Art Archive and edited. The source images have been credited where the credit information is available.  

The scope is limited to 5 main stages with an introduction that creates a class instance of user. The user then goes through the path choice, troll choice, mountain choice, castle puzzle and final choice to ‘win’. This limitation was ultimately imposed due to time restriction as a learning project and incorporating further branches and multiple end points would require the code to increase in complexity and size. The ‘choices’ have been implemented in methods called from relative files and, as such, there is scope for the narrative to be elaborated upon, or a quest sequel to be developed. 

**How will the user use the application?**

The user will need to download the application and run it in the terminal for gameplay. The user will use command line instructions to enter their name, stored in ARGV, with an option to create a username for game-play upon commencement or use a default. If the user finishes the game to completion, it will ask if the user would like to play again. If the user reaches an unfortunate death, they will exit the application and will need to run the application again in terminal to reboot. At this point they can choose a new username and companions. 

**Features** 

The first feature of the application allows the user to pick their own username and choose a set of companions from a menu selection of options including: 

**Matrix**: Neo, Morpheus, Trinity
(copyright "The Matrix", Warner Brothers)

**Hogwarts**: Ron, Hermione, Neville              
(copyright "Harry potter", J.K.Rowling)

**Company**: Gandalf, Thorin, Elrond              
(copyright "The Hobbit", J.R.R Tolkien)

Companions are called upon during the narrative. As the companions are tied to the user, each iteration of the game can include a different set of companions enhancing the variety during replay and thus user engagement. This feature has been implemented by the creation of a class titled User. The class contains a constructor for object initialization and methods for accessing user and companions within the story, including random companion. The companions are stored in a hash of arrays and once the user selects a group of companions (key), they (value) are set as an object attribute during the 'Introduction' method. There is scope to incorporate further attributes for the class instance throughout the game as more stages are added, and to call upon results of previous user choices. 

![companions](README_images/companions.png "Companion selection")

The main feature of the application is to allow the user choice that results in a branching narrative and in doing so, solve challenges along the way. An example of a puzzle is elaborated upon below:
Troll_choice: To move past this stage, the user is required to answer a riddle provided by the troll guarding the bridge. The user is given 3 chances to input a string, and after the 3rd try is exited from the game. This puzzle has been implemented by requiring user input with a case statement for the fight or flight choice, a loop to allow the user 3 attempts and an if statement to assess the solution.

Ascii art, in the form of strings, have been called from text files to incorporate visual checkpoints for the narrative. The text file is read via a method which incorporates error handling. Begin and rescue in the method allow a string to be displayed to the user in the case that the text file can't be read and allow the user to continue in the narrative.

![mountains](README_images/mountains.png)

###User Interaction and Experience
The terminal application opens with a brief introduction containing the user's name, previously entered in the command line. 

![introduction](README_images/introduction.png)


Choices are made via a menu selection system with arrows, utilising the ruby gem tty-prompt. 

![menu-selection](README_images/path_selection.png)

There are 3 worded logic riddles in the game that require the user to input strings, which are compared to variables. The solutions are not case-sensitive as all input is converted to lowercase, but it is important the user does not put spaces after the string for solution validation.

Outcomes are communicated to user via written text, including ‘GAME OVER’ or ‘CONGRATULATIONS’.

![game_over](README_images/gameover.png)

Errors in calling text files have been handled using begin and rescue and the user will be shown an error message to indicate an image could not be shown. 

```Ruby 
def txt_image(filename)
    begin
    result = File.read(filename)
    rescue StandardError => msg
        puts "An error has occurred, can't display image. Play, on!"
        result = ""
    end 
    result
end 
```

User input is achieved via menu selection to minimize errors. User input for solving puzzles is restricted to strings that are converted to lower case to minimize errors. The user, in most cases, is given multiple chances to imput by using a loop structure. 

```Ruby
3.times do puts "What is the solution?"
    answer = gets.chomp.downcase
    if answer == riddle_answer
        puts "Correct! The troll allows you to pass"  
        break
    else answer == false
    end 
```


**Around_Mountain** 
If the user does not correctly answer the riddle the narrative continues and results in exit from the game. An if statement has been utilised to check suitability of user input. This method has been incorporated into a total mountains method that encompasses both the around_mountain and through_mountain methods. 
**Door_puzzle** 
This puzzle has been designed using the gem Ascii, in which a phrase is written in 'smisome1' block font. The user is required to decode and input the phrase. 5 chances are given before a clue is offered with more input opportunities. The user can choose to keep guessing or exit the application at this point. 

###Flow Chart

The flow chart below shows control flow through the application commencing from the path choice stage. Prior to this stage the user chooses a username and companions which are stored as a class instance.

![flow chart](flow_chart.png)
