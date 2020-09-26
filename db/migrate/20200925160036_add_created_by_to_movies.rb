class AddCreatedByToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :created_by, :integer
  end
end
