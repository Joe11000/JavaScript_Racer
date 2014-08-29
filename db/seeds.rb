'a'.upto('d') do |i|
  Player.create(name: i, age: rand(11..40))
end

a = Player.first
b = Player.last

p a ,b

Race.new(player: [a,b])







# Overriding validations

# a = Player.new(age: 27);
# puts a.valid?
# puts
# puts
# puts


# a.save(validate: false)
# puts Player.first.valid?

# Player.first.id.increment_counter
# Player.first.id.increment_counter
# Player.first.id.decrement_counter


