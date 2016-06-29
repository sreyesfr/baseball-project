json.array!(@player_statuses) do |player_status|
  json.extract! player_status, :id, :player_id, :status_id
  json.url player_status_url(player_status, format: :json)
end
