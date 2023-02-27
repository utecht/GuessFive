class Player < ApplicationRecord
	has_many :games, through: :game_players
	has_many :things, through: :game_players
	has_many :game_players, dependent: :destroy
end
