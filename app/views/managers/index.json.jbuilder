json.array!(@managers) do |manager|
  json.extract! manager, :id, :first_name, :last_name, :team_id, :notes, :active
  json.url manager_url(manager, format: :json)
end
