require_relative 'game'

describe Game do 
	let(:game) {Game.new("chicken")}

	it "print secret word" do
		expect (game.secret_word).to be == "chicken"
	end 

	it "print game board" do #should print the game board as a fresh line
		expect (game.board).to be == "______"
	end 
end