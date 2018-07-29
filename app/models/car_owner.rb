class CarOwner

@@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.car_owner == self}
  end

  def mechanics
    self.cars.collect {|car| car.mechanic}.uniq
  end

  def self.average_amount_cars
    #Collect the number cars per user in hash with format {owner1 => 1, owner2 =3}
    owners_no_cars = {}
      Car.all.each {|car| owners_no_cars[car.car_owner.name] == nil ? owners_no_cars[car.car_owner.name] = 1.00 : owners_no_cars[car.car_owner.name] += 1.00 }
    #Sum the values of all the cars for each owner
    car_count = 0.00
      owners_no_cars.each {|key, value| car_count += value}
    #divide the sum of all cars of all owners by the number of owners (i.e. length of hash)
    (car_count/owners_no_cars.count).round(2)
  end

end
