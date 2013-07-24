class Player < ActiveRecord::Base
  # Remember to create a migration!
  has_and_belongs_to_many :games

  # validates :name, uniqueness: true
  validates :age, length: ,  numericality: { less_than_or_equal_to: 120 } # only accept integers
end
