class Dog < ActiveRecord::Base
   has_many :walkers, through: :dogwalkers





  def self.walked?
    all.map do |dog_walked|
      dog_walked.walked
    end
  end

  def self.all_breeds
  all.map do |dog|
      dog.breed
    end
end

def self.all_names
  all.collect do |dog|
    dog.name
  end
end

end
