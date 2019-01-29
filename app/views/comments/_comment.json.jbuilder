json.extract! comment, :id, :user_id, :integer, :post_id, :integer, :content, :string, :created_at, :updated_at
json.url comment_url(comment, format: :json)
