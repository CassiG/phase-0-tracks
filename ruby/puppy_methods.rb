#Pair programming Andrea Scott and Cassi Gallagher

#puppy class definition

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num = num.to_i
    num.times do
      puts "Woof!"
      end
  end

  def rollover
    puts "Rollover!"
  end

  def dogyears(years)
    years = years.to_i
    dog_age = years * 7
    puts "The puppy is #{dog_age} human years old."
  end

  def highfive(num)
    num.times {
      puts "( ^o^)ノ＼(^_^ )"
    }
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

# release 2 class

class Ikea

  def initialize
    puts "Congratulations! You're about to spend your entire weekend assembling furniture!"
  end

  def shop(furniture)
    puts "You picked up the last #{furniture}!"
  end

  def meatballs(num)
    cost = num * 0.03
    puts "Score! You just got #{num} meatballs for $#{cost}!"
  end
  
  def instructions
    puts "Try turning the diagram upside down and reading it that way."
  end

  def assembly (num)
    (num-1).times { puts "The allen wrench is around here somewhere!" }
    puts "Found it!"
  end

end