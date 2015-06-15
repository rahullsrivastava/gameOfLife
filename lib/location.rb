#Represents the geometric position in 2D Cartesian plane
class Location

  attr_reader :x_component, :y_component
  alias_method :eql?, :==
  def initialize(x_component, y_component)
    @x_component = x_component
    @y_component = y_component
  end

  def ==(other)
    return false unless self.class == other.class
    (@x_component == other.x_component && @y_component == other.y_component)
  end

  def hash
    [@x_component, @y_component].hash
  end

  def neighbours
    neigbours_array = [
      Location.new(@x_component + 1, @y_component + 1),
      Location.new(@x_component + 1, @y_component),
      Location.new(@x_component, @y_component + 1),
      Location.new(@x_component - 1, @y_component - 1),
      Location.new(@x_component - 1, @y_component + 1),
      Location.new(@x_component + 1, @y_component - 1),
      Location.new(@x_component, @y_component - 1),
      Location.new(@x_component - 1, @y_component),
    ]

  end
end