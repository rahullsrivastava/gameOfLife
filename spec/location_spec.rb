require 'spec_helper'

describe Location do
  it 'should be equal to itself' do
    location = Location.new(5,5)
    expect(location).to eq(location)
  end

  it 'should be equal to location with same x and y components' do
    location1 = Location.new(5,5)
    location2 = Location.new(5,5)
    expect(location1).to eq(location2)
  end

  it 'should not be equal if compared with other object' do
    location1 = Location.new(5,5)
    expect(location1).to_not eq(5)
  end

  it 'should return locations of its neighbours' do
    location = Location.new(0, 0)
    neighbours = location.neighbours
    expected_neighbours = [
      Location.new(-1, -1),
      Location.new(-1, 0),
      Location.new(0, -1),
      Location.new(0, 1),
      Location.new(1, 0),
      Location.new(-1, 1),
      Location.new(1, -1),
      Location.new(1, 1),
    ]
    neighbours.should =~ expected_neighbours
  end

end