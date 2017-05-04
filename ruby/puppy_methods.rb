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
