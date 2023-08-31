class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :code, null: false, unique: true
      t.string :name, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end
