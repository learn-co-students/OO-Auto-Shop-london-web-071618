class Mechanic

  attr_accessor :name, :specialty

  @@all = []

      def initialize(name, specialty)
        @name = name
        @specialty = specialty
        @@all << self
      end


      def self.all
          @@all
      end

      def cars
          Car.all.select {|car| car.mechanic == self}
      end

      def car_owners
          cars.map {|car| car.car_owner}
      end

      def car_owners_names
        car_owners.map {|carowner| carowner.name}
      end

end
