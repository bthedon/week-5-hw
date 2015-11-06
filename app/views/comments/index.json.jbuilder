json.array!(@comments) do |comment|
  json.extract! comment, :id, :post_id, :commenter, :comment_entered
  json.url comment_url(comment, format: :json)
end
