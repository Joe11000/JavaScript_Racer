class Player < ActiveRecord::Base
  # Remember to create a migration!
  has_many :games
  has_many :races

  # validates :name, uniqueness: true
  validates :age, numericality: { less_than_or_equal_to: 120 } # only accept integers
end
