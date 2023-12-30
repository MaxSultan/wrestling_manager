json.extract! event_item, :id, :name, :time, :event_id, :created_at, :updated_at
json.url event_item_url(event_item, format: :json)
