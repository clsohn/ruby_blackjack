require "spec_helper"

RSpec.describe Deck do

  let(:deck) {Deck.new}

  describe "initialize" do

    it "Creates a new deck of 52 cards" do
      expect(deck.cards.size).to eq 52
    end
  end

  describe "#deal" do
    it "deals the number of cards requested" do
      expect(deck.deal(2).size).to eq 2
    end
  end
end
