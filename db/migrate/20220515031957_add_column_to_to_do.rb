class AddColumnToToDo < ActiveRecord::Migration[6.0]
  def change
    add_column :to_dos, :task, :string
  end
end
