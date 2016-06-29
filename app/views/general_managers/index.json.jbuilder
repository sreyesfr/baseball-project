json.array!(@general_managers) do |general_manager|
  json.extract! general_manager, :id, :first_name, :last_name, :team_id, :notes, :active
  json.url general_manager_url(general_manager, format: :json)
end
