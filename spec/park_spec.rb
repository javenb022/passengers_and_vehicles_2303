require "./lib/park"
require "./lib/vehicle"
require "./lib/passenger"

RSpec.describe Park do
  describe "initialize" do
    it "exists" do
      park1 = Park.new("YellowStone", 10)
      
      expect(park1).to be_a(Park)
    end

    it "checks for admission price" do
      park1 = Park.new("YellowStone", 10)

      expect(park1.admission_price).to eq(10)
    end

    it "has vehicles enter the park" do
      park1 = Park.new("YellowStone", 10)
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")

      expect(park1.vehicles).to eq([])
      expect(park1.add_vehicle(vehicle1)).to eq([vehicle1])
    end

    it "checks for passengers" do
      park1 = Park.new("YellowStone", 10)

      vehicle1 = Vehicle.new("2001", "Honda", "Civic")

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle1.add_passenger(charlie)
      vehicle1.add_passenger(jude)
      vehicle1.add_passenger(taylor)

      park1.add_vehicle(vehicle1)
      
      expect(park1.passengers).to eq([[charlie, jude, taylor]])
    end
  end
end