class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.column :rating, :int
      t.column :review_id, :int
      t.column :movie_id, :int

      t.timestamps
    end

    remove_column :reviews, :rating
    add_column :reviews, :rating_id, :int

    remove_column :movies, :rating
    add_column :movies, :rating_id, :int
  end
end
