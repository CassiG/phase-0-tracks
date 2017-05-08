require_relative 'game'

describe GuessingGame do
	let(:game) {GuessingGame.new}

	it "Stores the initial word provided by Player 1" do
		expect(game.p1_word).to eq "testing"
	end

	it "splits initial word provided by Player 1" do
		expect(game.split_letter).to eq ["t", 'e', 's', 't', 'i', 'n', 'g']
	end

	it "Stores Player 2 letter guess" do
		expect(game.p2_guess).to eq "t"
	end

	#it "Refractor code from line 6 to stores the initial word as a split array" do
	##	expect(game.p1_word).to eq ["t", 'e', 's', 't', 'i', 'n', 'g']
	#end

	it "Checks to see if guess letter matches a letter in the word" do
		expect(game.check_letter).to be true
	end

	it "Checks to see if they got the answer within the amount of guesses provided" do
		expect(game.win_game).to be true
	end
end