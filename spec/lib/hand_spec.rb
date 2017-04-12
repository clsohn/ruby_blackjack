
require "spec_helper"

RSpec.describe Hand do


  let(:card_one) {Card.new(6 ,'♦')}
  let(:card_two) {Card.new(10,'♦')}
  let(:player) {Hand.new([card_one, card_two])}

  describe "initialize" do
    it "Initializes a new hand for the player" do
      expect(player.cards).to eq([card_one, card_two])
    end
  end


  describe "#calculate_hand" do
    it "calculates the value of the hand" do
      expect(player.calculate_hand).to eq(16)
    end
  end
end
