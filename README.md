# Setting Up

## Make sure you have ruby installed

    ruby -v

This should give something like:

    ruby 1.8.7 (2008-08-11 patchlevel 72) [universal-darwin10.0]


## Install the dependencies

    sudo gem install xml-simple

# How to Run the Program

## To read opinions.csv and output to the screen:

    ruby to_xml.rb opinions.csv
    
## To output to a file called opinions.xml:

    ruby to_xml.rb opinions.csv > opinions.xml