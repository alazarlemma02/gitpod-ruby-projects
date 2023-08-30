class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :code, :null => false
      t.string :name, :null => false
      t.date :release_date, :null => false
      t.json :other

      t.timestamps
    end
  end
end
