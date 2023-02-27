class Tag < ApplicationRecord
	has_many :things, through: :thing_tags
	has_many :thing_tags, dependent: :destroy
end
