require_relative 'game'

describe Game do 
	let(:game) {Game.new("chicken")}

	it "print game board" do #should print the game board as a fresh line
		expect (game.board).to be == "______"
	end 
end