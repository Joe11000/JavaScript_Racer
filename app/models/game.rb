# Should make the Player have many race(racable) polymorphic objects then a race can belong to more than one racer
# or Course many to many with Player and Race be the join table

class Game < ActiveRecord::Base
  has_many :races
  has_many :players, through: :races

  validates :players, presence: true
end

