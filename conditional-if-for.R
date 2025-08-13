#Basic if statement

burrito <- 1.5 #object value

  #if statement
if (burrito > 2) {
 print("I love burritos!") 
}

#Example with strings

my_ships <- c("Millenium Falcon", "X Wing", "Tie-Fighter", "Death Star")
stringr::str_detect(my_ships, pattern = "r") #detect patterns

phrase <- "I love burritos!"

if(stringr::str_detect(phrase, "love")){
  print("Big burrito fan")
}

#Basic else-if statement
pika <- 59.1 #storing value to an object

if (pika > 60) { #define size of mega pikas
  print("Mega pika")
  } else { #otherwise, print normal
    print("Normal  pika")} 

#Example with strings
food <- "I love tacos!"

if (stringr::str_detect(string = food, pattern = "burritos")) {
  print("yay burritos")
  }
  else {
    print("what about burritos?")
  }

#Example 3
marmot <- 2.8

if (marmot < 0.5) {
  print("small")
} else if (marmot >= 0.5 & marmot > 3) {
  print("medium")
} else {
  print("large")
}

#Use the switch function to write complicated if else statements
species = "mouse"

    #same as several if statements
switch(species,
       "cat" = print("Meow"),
       "dog" = print("Woof"),
       "mouse" = print("Squeak"))

#Next week: dplyr::case_when()


#For Loops

dog_names <-  c("Teddy", "Khora", "Banjo", "Waffle")

print(paste("My dog's name is", dog_names[1])) #create example for one data
                                              #element to put into my for loop

#Pupster <- 1
print(paste("My dog's name is", dog_names[pupster])) #variable that I can update

#Convert into a For Loop
for (pupster in dog_names){
  print(paste("My dog's name is", pupster))
}

# Another for loop example
mass <- seq(from = 0, to = 3, by = 0.5)

    #writing the body of the for loop
i <- mass[1]
new_val <- i + 2 #adding 2 to each value
print(new_val)


  #converting into a for loop
for (i in mass) {
  new_val <- i + 2 #adding 2 to each value
  print(new_val)
}

#practice same example with indexing
i <- 1
new_val <- mass[i] + 2
print(new_val)

# defining iterator using the length of the vector
for(i in 1:length(mass))  {
  new_val <- mass[i] + 2
  print(new_val)
}

    #same thing but with seq_along
for(i in seq_along(mass))  {
  new_val <- mass[i] + 2
  print(new_val)
}

# Example with iterating by position (indexing)
tree_height <- c(1, 2, 6, 10)

    #first case
tree_height[1] + tree_height[2]

    #convert into a general expression
i <- 1
val <- tree_height[1] + tree_height[i + 1]
print(val)

    #test creating the sequence
seq_along(tree_height)

    #convert into a for loop
for (i in seq_along(tree_height)) {
  val <- tree_height[i] + tree_height[i + 1]
  print(val)
}

