class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :content
      t.references :todo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
