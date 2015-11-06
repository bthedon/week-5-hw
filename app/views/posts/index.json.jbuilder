json.array!(@posts) do |post|
  json.extract! post, :id, :name, :content, :featured_image
  json.url post_url(post, format: :json)
end
