class Thing < ApplicationRecord
	has_many :tags, through: :thing_tags
	has_many :thing_tags, dependent: :destroy
	has_many :games, through: :game_things
	has_many :game_things, dependent: :destroy
	has_many :players, through: :game_players
	has_many :game_players, dependent: :destroy
end
