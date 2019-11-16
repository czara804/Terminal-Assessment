# Software Development Plan - CYOA

####Table of Contents
- Statement of Purpose & Scope
- Features
- User Interaction & Experience 
- Flow Chart
- Install Instructions 
- Help File 




###Statement of Purpose and Scope
This terminal application is a 'Choose your own adventure' game in a Dungeons & Dragons style that allows the user to make choices that result in a branching narrative, with an overarching goal of reaching a final endpoint. The user both makes choices via menu selection and encounters riddles that need to be solved with user input to move to the next stage. Some branches lead to death and premature exit from the story without achieving the overarching goal. 

This application has been developed with the purpose of game-play. The application is fantasy based with references and nods to popular fandoms such as Dr. Who, The Hobbit, The Matrix, Harry Potter, and general fairytale tropes. The user is required to read and engage with the narrative for clues and identify the correct path through the game to reach Dr. Tempestas castle and retrieve a pass-key. It was informed as part of a resurgent trend of puzzle and logic games, along with physical escape rooms, for an audience ranging from teenagers to adults. Due to the level of literacy required, it is suggested a minimum age of 9-10 years old. To enhance story flow and to flag main decision points where the user is required to perform an action for application continuation, ascii art has beenn incorporated into the narrative, in the style of visual story-telling. These images have been sourced from Ascii Art Archive and edited. The source images have been credited where the information is available.  

The scope is limited to 5 main stages with an introduction that creates a class instance of user, then path choice, troll choice, mountain choice, castle puzzle, final pill choice. This limitation was imposed ultimately due to time as incorporating futher branches and multiple end points would require the code to increase in complexity and size. The choices have been implemented in methods called from relative files and, as such, there is scope for the narrative to be elaborated upon. 

####How will the user use the application?
The user will need to download the application and run it in the terminal for game-play. The user will use command line instructions to enter their name, with an option to create a username for game-play upon commencement of the code being run. If the user finishes the game to completion, it will ask if the user would like to play again. If the user reaches an unfortunate death, they will exit the application and will need to run the application again in terminal to reboot. At this point they can choose a new username and companions. 

User Requirements: 
The user will need to input a username and answer puzzles using keyboard input (all answers should be in lowercase), otherwise will choose from a selection menu when a choice is required, including arrow selection or Y/n. 




###Features
Feature 1
The first feature of the application allows the user to pick their own username that is incorporated into the narrative. The user also chooses a set of companions from a menu selection of options including: 

matrix: Neo, Morpheus, Trinity                      (copyright "The Matrix", Warner Brothers)
hogwarts: Ron, Hermione, Neville                    (copyright "Harry potter", J.K.Rowling)
company: Gandalf, Thorin, Elrond                    (copyright "The Hobbit", J.R.R Tolkien)

Companions are also called upon during the narrative. As the companions are tied to the user, each iteration of the game can include a different set of companions enhancing the variety during replay and thus user engagement. 
This feature has been implmented by the creation of a class titled User. The class contains a constructor for object initialization and methods for accessing user and companions within the story. The companions are stored in a hash of arrays and once the user selects a group of companions (key), they (value) are set as an object attribute. There is scope to incoporate further attributes for the class instance throughout the game as more stages are added, and to call upon results of previous user choices. 

Feature 2:
The main feature of the application is to allow the user choices that results in a branching narrative. Please see flow chart below for a visual depiction for game flow. Choices are made via a menu selection system with arrows, utilising the ruby gem tty-prompt. 
There are 3 worded logic riddles in the game that require the user to input strings to solve and move through the game. 
Bridge: To move past this point, the user is required to answer a riddle provided by the troll guarding the bridge. The user is given 3 chances to input a string, and after the 3rd try is exited from the game. This puzzle has been implemented by requiring user input with a case statement for the fight or flight choice, a loop for the riddle to allow the user 3 attempts and an if statement to assess the solution.
Around_Mountain: This riddle is given by the giant eagles if the user chooses to go around the mountain rather than through. If the user does not correctly answer the riddle the narrative continues and results in exit from the game. An if statement has been utilised to check suitability of user input. This method has been incorporated into a total mountains method that encompasses both the around_mountain and through_mountain methods. 
Door_puzzle: This puzzle has been designed using the gem Ascii, in which a phrase is written in 'smisome1' font. The user is required to decode and input the phrase to mvoe past this point. The user is given 5 chances before being offered a clue and then more opportunities to input. The user can choose to keep guessing or exit the application at this point. 


Feature 3
Ascii art has been called from a text file to incorporate visual checkpoints for the narrative. The text file is read from a method which incorporates error handling. Begin and rescue in the method allow a string to be displayed to the user in the case that the text file can't be read and allow the user to continue in the narrative.  


###User Interaction and Experience
<!-- Develop an outline of the user interaction and experience for the application.
Your outline must include:
- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user -->

###Flow Chart
<!-- Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML. -->

###Install instructions/ Help File 