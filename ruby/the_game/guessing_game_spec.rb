require_relative 'guessing_game'

describe Game do 
	let(:game) {Game.new("chicken")}

	it "print game board" do
		expect (game.board).to be == "______"
	end 