class RemoveRoleRefFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :roles, foreign_key: true, index: false
  end
end
