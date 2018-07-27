class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.select {|car| car.car_owner = self}
  end

  def mechanics
    self.cars.map {|x| x.mechanic}
  end

  def self.avg_of_all
      all_cars = self.all.map {|owner| owner.cars.size }
      all_cars.inject(:+) / all_cars.size 
  end



end
