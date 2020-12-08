# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"
  
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue
    puts "we dont have that fruit. Try again if u give me coffee?(give coffee (y/n)"
    coffee = gets.chomp
    if coffee == "y"
      retry
    else
      puts "no coffee no friends >=("
      raise StandardError.new "No coffee given" 
    end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    if name.length <= 0
      raise ArgumentError.new "Input a name that is at least 1 character long"
    end
    @yrs_known = yrs_known
    if @yrs_known < 5
      raise ArgumentError.new "It takes at least 5 years to be best friends"
    end
    @fav_pastime = fav_pastime
    if fav_pastime.length <= 0
      raise ArgumentError.new "Input a favorite pastitme"
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


