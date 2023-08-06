json.extract! todo_model, :id, :task, :isCompleted, :created_at, :updated_at
json.url todo_model_url(todo_model, format: :json)
