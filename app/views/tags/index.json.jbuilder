json.array!(@tags) do |tag|
  json.extract! tag, :id, :player_id, :article_id
  json.url tag_url(tag, format: :json)
end
