class Mechanic

@@all = []

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
      Car.all.select {|car| car.mechanic ==  self}
  end

  def car_owners
    self.cars.collect {|car| car.car_owner}.uniq
  end

  def names_car_owners
    self.car_owners.collect {|owner| owner.name}
  end
end
