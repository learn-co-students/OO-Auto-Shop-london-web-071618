require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ali = CarOwner.new("Ali")
barry = CarOwner.new("Barry")
carrie = CarOwner.new("Carrie")

steve = Mechanic.new("Steve", "clunker")
jade = Mechanic.new("Jade", "exotic")
kerry = Mechanic.new("Kerry", "antique")

honda = Car.new("Honda", "Jazz", "clunker", ali, steve)
porsche = Car.new("Porche", "Cayenne", "exotic", carrie, jade)
ford = Car.new("Ford", "1965", "antique", carrie, kerry)
toyota = Car.new("Toyota", "Old", "antique", barry, kerry)
ford2 = Car.new("Ford", "mustang", "antique", barry, kerry)

binding.pry
