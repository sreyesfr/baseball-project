json.array!(@articles) do |article|
  json.extract! article, :id, :title, :date_posted, :time_posted, :content
  json.url article_url(article, format: :json)
end
