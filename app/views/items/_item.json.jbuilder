json.extract! item, :id, :name, :url, :instructions, :purchased, :hidden_from_owner, :created_at, :updated_at
json.url item_url(item, format: :json)
