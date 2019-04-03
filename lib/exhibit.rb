require './lib/exhibit_module'

class Exhibit
  include ExhibitMod

  attr_reader :name,
              :cost
  def initialize(name, cost)
    @name = name
    @cost = cost
    @exhibits = []
  end


end
