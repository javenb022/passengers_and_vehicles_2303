require "./lib/vehicle"
require "./lib/passenger"

RSpec.describe Vehicle do
  describe "initialize" do
    it "exists" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_a(Vehicle)
    end

    it "calls on year of vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.year).to eq("2001")
    end

    it "calls on make of vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.make).to eq("Honda")
    end

    it "calls on model of vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.model).to eq("Civic")
    end

    it "checks vehicle for speeding" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to eq(false)
      vehicle.speed
      expect(vehicle.speeding?).to eq(true)
    end

    it "checks for passengers" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq([])
    end

    it "adds passengers to vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end
end