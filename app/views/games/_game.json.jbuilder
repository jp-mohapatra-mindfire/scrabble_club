json.extract! game, :id, :name, :start_date, :end_date, :created_at, :updated_at
json.url game_url(game, format: :json)
