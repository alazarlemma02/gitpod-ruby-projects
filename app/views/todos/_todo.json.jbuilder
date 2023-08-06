json.extract! todo, :id, :task, :isCompleted, :created_at, :updated_at
json.url todo_url(todo, format: :json)
