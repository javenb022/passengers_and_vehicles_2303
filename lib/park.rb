class Park
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @passengers = []
    @revenue = 0
  end
end