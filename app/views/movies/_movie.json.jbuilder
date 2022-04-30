json.extract! movie, :id, :title, :movie_length, :rating, :created_at, :updated_at
json.url movie_url(movie, format: :json)
