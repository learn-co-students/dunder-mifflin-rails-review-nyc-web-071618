class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  # def dog_name=(name)
  #   self.dog = Dog.find_or_create_by(name: name)
  # end
  #
  # def dog_name
  #   self.dog ? self.dog.name : nil
  # end

end
