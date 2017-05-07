require_relative 'game'

describe GuessingGame do
	let(:game) {GuessingGame.new}

	#it "Stores the initial word provided by Player 1" do
	#	expect(game.p1_word).to eq "testing"
	#end

	it "Stores Player 2 letter guess" do
		expect(game.p2_guess).to eq "t"
	end

	it "Stores the initial word as a split array" do
		expect(game.p1_word).to eq ["t", 'e', 's', 't', 'i', 'n', 'g']
	end

	it "Checks to see if we can print array as blank list" do
		expect(game.new_game).to eq "t _ _ t _ _ _"
	end
end