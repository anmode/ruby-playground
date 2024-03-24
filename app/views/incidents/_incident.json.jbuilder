json.extract! incident, :id, :inc_id, :desc, :user_name, :created_at, :updated_at
json.url incident_url(incident, format: :json)
