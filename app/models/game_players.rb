class Game < ActiveRecord::Base
  has_many :players
  has_many :races, through:

  validates :players, presence: true
end
