class AddColumnToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :task, :string
    add_column :todos, :complete, :boolean, default: false
  end
end
