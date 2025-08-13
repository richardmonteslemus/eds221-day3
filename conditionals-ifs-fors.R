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


# Writing for loops 
dog_names <- c("Teddy", "Khora", "Banjo", "Waffle")

# create example for one data element to put into my for loop
# version with copy and pasting 
print(paste("My dog's name is", dog_names[1]))
print(paste("My dog's name is", dog_names[2]))
print(paste("My dog's name is", dog_names[3]))
print(paste("My dog's name is", dog_names[4]))

# variable I can update
# pupster <- 1

for (pupster in dog_names) {
  print(paste("My dog's name is", pupster))
}

# Another for loop example 
mass <- seq(from = 0, to = 3, by = 0.5)

i <- mass[1]
new_val <- i + 2 # adding 2 to each value 
print(new_val)

# write into a for loop 

for (i in mass) {
  new_val <- i + 2 # adding 2 to each value 
  print(new_val)
}

# practice some example with indexing 
i <- 1
new_val <- mass[i] + 2
print(new_val)

for (i in 1:length(mass)) { # defining iterator using lenght of vector 
  new_val <- mass[i] + 2
  print(new_val)
}

for (i in seq_along(mass)) { # defining iterator using sequence along
  new_val <- mass[i] + 2
  print(new_val)
}

# another example with iterating by position (indexing)
tree_height <- c(1, 2, 6, 10)

#example for the first case
tree_height[1] + tree_height[2]

# convert into a generalizable expression 
i <- 1
val <- tree_height[i] + tree_height[i + 1]
print(val)

# convert into a for loop 
# test out creating the sequence 

seq_along(tree_height)

for (i in seq_along(tree_height)) {
  val <- tree_height[i] + tree_height[i + 1]
  print(val)
}

# for loops with conditional statements 

# create a vector of animals 
animal <- c("cat", "dog", "dog", "zebra", "dog")

for (i in seq_along(animal)) {
  if (animal[i] == "dog"){
    print("I love dogs!")
  } else {
    print("These are other animals")
  }
}

# another for loop example with conditionals 
# animal species
species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")

# and their respective ages in human years
age_human <- c(3, 8, 4, 6, 12, 18)

# convert ages to 'animal years' using the following: 
# 1 human year = 7 in dog years 
# 1 human year = 0.88 in elephant years 
# 1 human year = 4.7 in goat years 

# allocate a space for our output 
animal_ages <- vector(mode = "numeric", length = length(species))
for (i in seq_along(species)){
  if (species[i] == "dog") {
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant") {
    animal_age <- age_human[i] * 0.88
  } else if (species[i] == "goat") {
    animal_age <- age_human[i] * 4.7
  }
  animal_ages[i] <- animal_age # populate empty vector
  }
  

# another example of storing an output 

tigers <- c(29, 34, 82)
lions <- c(2, 18, 6)

big_cats <- vector(mode = "numeric", length = length(tigers) )

for (i in seq_along(tigers)) {
  big_cats[i] <- tigers[i] + lions[i]
}
  
  

