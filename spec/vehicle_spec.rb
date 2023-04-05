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
  end
end