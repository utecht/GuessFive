json.extract! game, :id, :name, :password, :status, :created_at, :updated_at
json.url game_url(game, format: :json)
