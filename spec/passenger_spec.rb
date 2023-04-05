require "./lib/passenger"

RSpec.describe Passenger do
  describe "initialize" do
    it "exists" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie).to be_a(Passenger)
      expect(taylor).to be_a(Passenger)
    end

    it "can call passengers name" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.name).to eq("Charlie")
      expect(taylor.name).to eq("Taylor")
    end

    it "can call passengers age" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.age).to eq(18)
      expect(taylor.age).to eq(12)
    end

    it "determines if passenger is adult" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
    end

    it "determines a driver" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)

      expect(charlie.driver?).to eq(false)
      charlie.drive
      expect(charlie.driver?).to eq(true)
    end
  end
end