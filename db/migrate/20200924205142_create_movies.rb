class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :year
      t.string :director

      t.timestamps
    end
  end
end
