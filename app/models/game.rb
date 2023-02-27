class Game < ApplicationRecord
	has_many :players, through: :game_players
	has_many :game_players, dependent: :destroy
	has_many :things, through: :game_things
	has_many :game_things, dependent: :destroy
end
