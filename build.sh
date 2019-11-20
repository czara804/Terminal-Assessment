#!/bin/sh

echo "Hello there, we are going to install the 'Choose your own adventure: Nimbifer' quest and associated gems required."
#make CYOA folder 
mkdir -p CYOA_dist
#copy code to CYOA_dist
cp cyoa3.rb ./CYOA_dist
cp methods_cyoa.rb ./CYOA_dist
cp mountain-pic.txt ./CYOA_dist
cp castle-pic.txt ./CYOA_dist
cp rain.txt ./CYOA_dist
#install gems 
gem install colorize
gem install tty-prompt
gem install faker
gem install artii

echo "To bootup game you need to type the following command onto the next line: ruby cyoa3.rb <namehere>"

