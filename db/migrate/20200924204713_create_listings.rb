class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :moviebox_id
      t.integer :movie_id
      t.integer :user_id
      t.string :user_status
      t.boolean :favorite

      t.timestamps
    end
  end
end
