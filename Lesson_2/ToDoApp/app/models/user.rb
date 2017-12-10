class User < ApplicationRecord
	validates :firstname, presence: true, uniqueness: true
end
