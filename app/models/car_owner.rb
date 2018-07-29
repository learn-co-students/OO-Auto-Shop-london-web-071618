class CarOwner

  attr_accessor :name

  @@all = []

      def initialize(name)
        @name = name
        @@all << self
      end


      def self.all
          @@all
      end

      def self.owners
          CarOwner.all.map {|carowner| carowner.name}
      end

      def cars
          Car.all.select {|car| car.car_owner == self}
      end

      def mechanics
        cars.map {|car| car.mechanic}
      end

      def self.avg_cars
        (Car.all.size)/(CarOwner.all.size).to_f
      end


end
