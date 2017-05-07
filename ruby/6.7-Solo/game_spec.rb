require_relative 'game'

describe GuessingGame do
	let(:game) {GuessingGame.new}

	it "Stores the initial word provided by Player 1" do
		expect(game.p1_word).to eq "testing"
	end

	it "Splits the word into an array for guessing" do
		expect(game.p1_word_split).to eq ["t", 'e', 's', 't', 'i', 'n', 'g']
	end

	it "Stores Player 2 letter guess" do
		expect(game.p2_guess).to eq "t"
	end
end