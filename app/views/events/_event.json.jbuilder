json.extract! event, :id, :content, :status, :templet_id, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
