#!/bin/sh

echo "Hello there, we are going to install the 'Choose your own adventure' quest and associated gems required."
#make CYOA folder 
mkdir -p CYOA_dist
#copy code to CYOA_dist
cp cyoa3.rb ./CYOA_dist
cp methods_cyoa.rb ./CYOA_dist
cp mountain-pic.txt ./CYOA_dist
cp castle-pic.txt ./CYOA_dist
#install gems 
gem install colorize
gem install tty-prompt
gem install faker
gem install artii

echo "To bootup game, please enter your first name below next to the command 'ruby cyoa3.rb'"

ruby cyoa3.rb #enter name here