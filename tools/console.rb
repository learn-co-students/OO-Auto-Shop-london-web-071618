require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#car_owners
sarah = Car_owner.new('sarah')
maduri = Car_owner.new('maduri')
ritz = Car_owner.new('ritz')

#mechanics
mechanic1 = Mechanic.new('mechanic1', 'antique')
mechanic2 = Mechanic.new('mechanic2', 'exotic')
mechanic3 = Mechanic.new('mechanic3', 'flash')

#cars
car1 = Car.new('bmw', 'X5', 'exotic', sarah, mechanic1)
car2 = Car.new('honda', 'accent', 'antique', maduri, mechanic2)
car3 = Car.new('audi', 'A5', 'flash', ritz, mechanic3)



binding.pry
