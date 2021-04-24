json.extract! player, :id, :name, :joining_date, :contact_number, :email, :created_at, :updated_at
json.url player_url(player, format: :json)
