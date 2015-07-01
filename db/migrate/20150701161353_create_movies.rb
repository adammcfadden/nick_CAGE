class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.column :title, :string
      t.column :description, :text
      t.column :rating, :int
      t.column :release_date, :date

      t.timestamps
    end
  end
end
