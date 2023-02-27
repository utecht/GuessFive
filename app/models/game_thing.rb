class GameThing < ApplicationRecord
  belongs_to :thing
  belongs_to :game
end
