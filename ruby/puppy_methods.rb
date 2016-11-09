class Puppy

 def fetch(toy)
   puts "I brought back the #{toy}!"
   toy
 end

 def speak(sound)
         woof = 0
         while woof < sound 
             puts "Woof!"
             woof += 1
         end
 end

 def roll_over
     puts "*rolls over*"
 end

 def dog_years(human_years)
     human_years = human_years * 7
     puts human_years 
     human_years
 end

 def treats(per_meal)
     per_meal = per_meal * 2
     puts per_meal
     per_meal
 end

 def initialize
     puts "Initializing new puppy instance ..."
 end

end

#bob is the instance (narrowed down to a specific animal inside this species)
bob = Puppy.new


bob.fetch("ball")
bob.speak(7)
bob.roll_over
bob.dog_years(6)
bob.treats(2)

# New class

class Cooking

    def initialize 
        puts "Initializing new task ..."
    end

    def omelette 
        puts "Work with eggs, spinach, cheddar."
    end

    def wash_dishes
        puts "Dishes are done."
    end
end

before_meal = 0
during_meal = []
while before_meal < 50
    during_meal << Cooking.new
    before_meal += 1
end

p during_meal
during_meal.each do |during| 
    during.omelette
    during.wash_dishes
end