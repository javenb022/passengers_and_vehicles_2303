class Passenger
  attr_reader :name, :age
  def initialize(passenger_details)
    @name = passenger_details["name"]
    @age = passenger_details["age"]
    @driver = false
  end

  def adult?
    if @age >= 18
      true
    else
      false
    end
  end

  def driver?
    if @driver == true
      true
    else
      false
    end
  end

  def drive
    if @age >= 18
      @driver = true
    else @age < 18
      @driver = false
    end
  end
end