class Car

@@all = []

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map {|car| car.classification}.uniq
  end

  def mechanics_matching_classification_expertise
      Mechanic.all.select {|mechanic|  mechanic.specialty == self.classification}
  end

end
