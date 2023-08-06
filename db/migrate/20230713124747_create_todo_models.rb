class CreateTodoModels < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_models do |t|
      t.string :task, null: false
      t.boolean :isCompleted

      t.timestamps
    end
  end
end
