  require "spec_helper"

  RSpec.describe Card do

    let(:card) {Card.new("A","♦")}
    let(:new_card) {Card.new("8","♦")}

    describe "initialize" do

      it "initializes a card object" do
        expect(card.rank).to eq 'A'
        expect(card.suit).to eq '♦'
        expect(new_card.rank).to eq "8"
        expect(new_card.suit).to eq '♦'
      end
    end

    describe "#face_card?" do

      it "Checks if card is a face card" do
        expect(card.face_card?).to eq false
        expect(new_card.face_card?).to eq false
        expect(new_card.face_card?).to_not eq true
      end
    end

    describe "#ace_card?" do

      it "Checks if card is an ace card" do
        expect(card.ace_card?).to eq true
        expect(new_card.ace_card?).to eq false
      end
    end


  end
