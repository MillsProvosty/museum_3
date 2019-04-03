require './lib/exhibit_module'

class Museum
  include ExhibitMod

  attr_reader :name,
              :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end


end
