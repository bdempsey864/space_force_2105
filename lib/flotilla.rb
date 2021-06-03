class Flotilla
  attr_reader     :designation,
                  :personnel,
                  :ships
  def initialize(data)
    @designation = data[:designation]
    @personnel   = []
    @ships       = []
    @requirements = []
  end

  def add_requirement
   @requirements[astrophysics] = 6
   @requirements[quantum_mechanics] = 3
  end
end