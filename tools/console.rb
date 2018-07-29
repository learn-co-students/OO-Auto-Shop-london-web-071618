require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


ritz = CarOwner.new("ritz")
sarah = CarOwner.new("sarah")
ali = CarOwner.new("ali")
maduri = CarOwner.new("maduri")


mechanic1 = Mechanic.new("mechanic1", "antique")
mechanic2 = Mechanic.new("mechanic2", "exotic")
mechanic3 = Mechanic.new("mechanic3", "clunker")
mechanic4 = Mechanic.new("mechanic4", "antique")

car1 = Car.new("make1", "model1", "antique", ritz, mechanic1)
car2 = Car.new("make2", "model2", "exotic", sarah, mechanic2)
car3 = Car.new("make3", "model3", "clunker", ritz, mechanic3)
car4 = Car.new("make4", "model4", "antique", ali, mechanic1)
car5 = Car.new("make5", "model5", "exotic", maduri, mechanic4)


binding.pry
