require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/exhibit'
require './lib/patron'
require './lib/museum'

class MuseumTest < Minitest::Test
  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
    @gems_and_minerals = Exhibit.new("Gems and Minerals", 0)
    @dead_sea_scrolls = Exhibit.new("Dead Sea Scrolls", 10)
    @imax = Exhibit.new("IMAX", 15)
  end

  def test_museum_exists
    assert_instance_of Museum, @dmns
  end

  def test_museum_has_attributes
    assert_equal "Denver Museum of Nature and Science", @dmns.name
  end

  def test_museum_initializes_empty_array_of_exhibits
    assert_equal [], @dmns.exhibits
  end
end
