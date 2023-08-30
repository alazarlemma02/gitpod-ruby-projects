json.extract! movie, :id, :code, :name, :release_date, :other, :created_at, :updated_at
json.url movie_url(movie, format: :json)
