class AddAnotherColumnToToDo < ActiveRecord::Migration[6.0]
  def change
    add_column :to_dos, :task_id, :integer
  end
end
