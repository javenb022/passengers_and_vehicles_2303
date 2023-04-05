class Park
  attr_reader :name, :admission_price, :vehicles, :passengers, :revenue
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @revenue_total = 0
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    @vehicles.map do |vehicle|
      vehicle.passengers 
    end
  end

  def revenue
    @vehicles.map do |vehicle|
      @revenue_total = vehicle.passengers.count * 10
    end
  end
end