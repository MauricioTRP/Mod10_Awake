json.extract! user, :id, :rut, :name, :last_name, :course_id, :created_at, :updated_at
json.url user_url(user, format: :json)
