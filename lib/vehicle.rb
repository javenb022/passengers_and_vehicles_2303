class Vehicle
  attr_reader :year, :make, :model, :passengers
  def initialize(year, make, model, passengers = [])
    @year = year
    @make = make
    @model = model
    @odometer = 0
    @passengers = []
  end

  def speeding?
    if @odometer >= 70
      true
    else @odometer < 70
      false
    end
  end

  def speed 
    @odometer += 70
  end
end