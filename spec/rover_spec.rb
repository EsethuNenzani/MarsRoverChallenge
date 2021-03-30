require 'rspec'
require 'rover'

describe 'Rover' do

  it 'check if x-coordinate is an integer' do
    rover = Rover.new(2,2)
    rover.x_coordinate = 1
    expect(rover.x_coordinate).to(be_an(Numeric))
  end

  it 'check if x-coordinate is an integer' do
    rover = Rover.new(2,2)
    rover.y_coordinate = 1
    expect(rover.y_coordinate).to(be_an(Numeric))
  end

  it 'checks if the cardinal compass points are a string value' do
    rover = Rover.new(2,2)
    rover.compass_point = "string"
    expect(rover.compass_point).to(be_a(String))
  end


  it 'returns error if entered cardinal point is greater than one' do
    rover = Rover.new(2,2)
    rover.compass_point = "E"
    expect(rover.compass_point.length).to(be(1))
  end



end