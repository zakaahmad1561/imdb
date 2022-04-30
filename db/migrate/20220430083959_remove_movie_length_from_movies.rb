class RemoveMovieLengthFromMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :movie_length, :integer
  end
end
