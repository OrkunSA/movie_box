class RemoveCreatedByFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :created_by, :integer
  end
end
