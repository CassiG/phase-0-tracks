require_relative 'game'

describe GuessingGame do
	let(:game) {GuessingGame.new}

	it "Stores the initial word provided by player 1" do
		expect(game.p1_word).to eq "testing"
	end
end