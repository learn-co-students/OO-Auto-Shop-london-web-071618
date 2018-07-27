class Car

  attr_reader :make, :model, :car_owner, :mechanic, :classification
  @@all = []
  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @car_owner = car_owner
    @mechanic = mechanic
    @classification = classification
    @@all << self
  end


  def self.all
    @@all
  end

  def self.classifications
    Car.all.map {|x| x.classification}
  end

  def mechanic_for
    Mechanic.all.select {|x| x.specialty == self.classification}
  end

end
