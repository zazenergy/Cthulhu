#!/usr/bin/env ruby

def prompt()
  print "> "
end

#This is where the player begins the game
def start()
  puts "You are in the City of Arkham. There is something amiss. 
  Should you explore the school first, or the town hall?"
  
  prompt;  next_move=gets.chomp
  
  #There are two options. You can explore the school or explore the town hall
  if next_move.include? "school"
   school()
   elsif #town hall
     town_hall()
  end
      
end

def dead(why)
  puts "#{why} Good job!"
  exit
end

def school()
  puts "You walk in the school and notice the eerie silence that pervades. The classrooms are empty and you see a light at the end of the hall 
  that seems to lead to a dark cellar."
  
  sleep 2 #second
  
  puts "Do you want to explore the cellar or will you leave the school?"
  
  prompt; next_move=gets.chomp
  
  if next_move.include? "cellar"
    dead("You follow the light and head down the stairs. \n You encounter a secret passageway that must have been used by the fleeing school children. \n You follow it to the end and safely escape out of Arkham.")
    
  else next_move.include? "leave" or next_move.include? "school"
    dice_roll(generated_number) #Need to fill this in with the dice role argument
      
  end  
end

def town_hall()
  puts "You encounter the mayor who is all wiley eyed. His hair is on edges and you think you just saw something faintly resembling a tentacle pop out from underneath his tailcoat. \n He says, 'Come dear friend, I have some ancient texts to show you.' \n Do you follow him?"

prompt; next_move = gets.chomp

  if next_move.include? "yes"
  dice_roll("He grabs you by the hand. 'Purrrrrfect. You will become the ultimate sacrifice!'")
  else dead("You leave this maniac to his own devices and flee Arkham!")
  end
end

def dice_roll(generated_number)
  #Generate a random number between one and 6. Print number to screen. Depending on number chosen there are two outcomes.
  puts "#{generated_number} You encounter the Elder ones. Roll the die to see if you survive. Anything greater than a 4 wins."
  
  sleep 2 #seconds
  puts "The dice roll begins, now!"
  sleep 3
  generated_number=1 + rand(6)
  if rand <= 4
    dead("You rolled a #{generated_number}. Your might has been crushed and you will be swalled into the depths of Cthulhu's lair.")
  else 
    dead("You have beaten the Elder god with the strength of your will.")
  end
end

start()




