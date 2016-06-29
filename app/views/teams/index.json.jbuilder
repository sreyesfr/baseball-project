json.array!(@teams) do |team|
  json.extract! team, :id, :name, :abreviation, :city, :state, :salary_cap
  json.url team_url(team, format: :json)
end
