class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :movie_length
      t.float :rating

      t.timestamps
    end
  end
end
