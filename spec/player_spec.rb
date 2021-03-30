require 'rspec'
require 'player'

describe 'Player' do

  it 'calculates the correct credits remain' do
    player = Player.new
    player.credits =  1.5
    player.sub_credits(1.3)
    expect(player.credits).to be_within(0.0001).of 0.19999
  end

#   truthy or falsy

  it 'returns the correct value of the playes active status' do
    player = Player.new
    player.active = "YES"
    expect(player.active).to be_truthy
  end

  it 'returns an error when sub_credit is passed a zero credit value' do
    player = Player.new
    player.credits = 2
    expect {player.sub_credits(0)}.to raise_exception(StandardError)
  end

end