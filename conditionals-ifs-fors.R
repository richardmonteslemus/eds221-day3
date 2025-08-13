# basic if statement 

burrito <- 1.5 # assiging an object value 

# write a short if statement 
if (burrito > 2) {
  print("I love burritos!")
}

# An example with strings
my_ships <- c("Millenium Falcon", "X-wing", "Tie-Fighter", "Death Star")
stringr::str_detect(my_ships, pattern = "r")

phrase <- "I love burritos!"
if (stringr::str_detect(phrase, "love")){
  print("Big burrito fan")
}

# Basic if-else statement 


pika <- 89.1 # storing a value to an object

if(pika > 60) { # define size of mega pikas
  print("mega pika")
} else { # otherwise print normal pika
  print("normal pika")
}

# Another example with strings 

food <- "I love tacos"

if (stringr::str_detect(food, pattern = "burritos")) {
  print("yay burritos!")
} else {
  print("what about burritos?")
}

# More options with if-else if-else statements

marmot <- 0.7
if (marmot < 0.5) {
  print("small") # define small marmot
} else if (marmot >= 0.5 & marmot <3) { # define medium marmot
} else { # everything else is a large marmot
  print("large")
}

# Use the switch function to write complicated if-else statements 

species = "mouse"

# all this code is the same as several if else statements
switch(species, 
       "cat" = print("meow"), # same as writing an if statement
       "dog" = print("woof"), # same as an else if statement
       "mouse" = print("squeak") # same as last else if statement
       )



# see next week dplyr:: does something similar


