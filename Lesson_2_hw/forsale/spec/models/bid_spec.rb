require 'rails_helper'

RSpec.describe Bid, type: :model do
	subject { described_class.new(bidder_id: 1, auction_id: 14) }
  describe "Associations" do
	  it "has one bidder" do
	    assc = described_class.reflect_on_association(:bidder)
	    expect(assc.macro).to eq :has_one
	  end

	  it "has one auction" do
	    assc = described_class.reflect_on_association(:auction)
	    expect(assc.macro).to eq :has_one
	  end
	end
	describe "Validations" do
		it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
	end

end
