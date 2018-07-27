class Mechanic

  attr_reader :name, :specialty
  @@all = []
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << all
end

def self.all
  @@all
end

def cars
  Car.all.select {|x| x.mechanic == self}
end

def self.owners_for(mechanic)
  mechanic_cars = mechanic.cars
  mechanic_cars.map {|x| x.car_owner}
end

def self.owner_names_for(mechanic)
  self.owners_for(mechanic).map {|x| x.name}
end


end
