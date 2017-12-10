class Bid < ApplicationRecord
	has_one :bidder
	has_one :auction
end
