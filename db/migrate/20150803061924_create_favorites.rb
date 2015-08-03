class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :movie
      t.string :references
      t.references :movie, index: true,
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
