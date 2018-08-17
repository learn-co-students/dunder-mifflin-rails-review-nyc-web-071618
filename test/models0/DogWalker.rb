class DogWalker < ActiveRecord::Base
  belongs_to :walker
  belongs_to :dog

def self.find_dogs_walked_by_name(name)
   ids = []
    all.select do |dogwalker|
      dogwalker == name
    ids << dogwalker.walker_id
end
 ids
end







end
