class Walker < ActiveRecord::Base
  has_many :dog_walkers
  has_many :dogs, through: :dog_walkers

  def self.all_names
    all.collect do |walker|
      walker.name
    end
  end

def self.find_dogs_walked_by_name(name)
  dogs = DogWalker.find_dogs_walked_by_name(name).select do |dogwalker|
      dogwalker == name
  end
    dogs
end


  def self.find_walker_by_name(input)
    names = self.all_names.find_all do |walker|
      input == walker
    end
    if names.length == 0
      puts "Sorry could not find the walker."
      names
    else
      i = 1
      names.each do |name|
        puts "#{i}. #{name}"
        i+=1
        find_dogs_walked_by_name(name)


      end
    end
  end

  def self.all_prices
    all.collect do |walker|
      walker.price
    end
  end


  def self.find_walker_by_price(x)
   self.all_prices.find_all{ |y| y == x}
  end

  def self.find_walker_by_schedule(x)
    self.all_schedules.find_all{ |y| y == x}
  end

  def self.all_schedules
    all.collect do |walker|
      walker.schedule
    end
  end



end
