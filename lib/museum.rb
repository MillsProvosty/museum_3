require './lib/exhibit_module'

class Museum
  include ExhibitMod

  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def recommend_exhibits(patron)
    recommendations = []
    @exhibits.each do |exhibit|
      if patron.interests.include?(exhibit.name)
        recommendations << exhibit
      end
    end
    recommendations
    #I spent WAY too much time on this...for some reason map kept returning a nil for the IMAX? dumb.
  end

  def admit(patron)
    @patrons << patron
  end


  def patrons_by_exhibit_interest
    hash = Hash.new
    @exhibits.each do |exhibit|
      hash[exhibit] = []
    end
binding.pry
    hash.each do |key, value|
      @patrons.each do |patron|
        if patron.interests.include?(key.name)
          value = patron
        end
      end
    end
    interested
  end
end

  def patrons_by_exhibit_interest
    hash = Hash.new
    @exhibits.each do |exhibit|
      hash[exhibit] = @patrons.find_all do |patron|
        patron.interests.include?(exhibit.name)
      end
    end
  end

end
