class Car

  attr_accessor :make, :model, :classification, :car_owner, :mechanic

  @@all = []

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

      def self.car_classifications
          Car.all.map {|car| car.classification}
      end

      def mechanics_expertise
          Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
      end

end
