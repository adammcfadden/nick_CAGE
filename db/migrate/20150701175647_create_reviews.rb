class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :body, :string
      t.column :rating, :int
      t.column :movie_id, :int

      t.timestamps
    end
  end
end
