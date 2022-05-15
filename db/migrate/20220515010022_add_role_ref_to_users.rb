class AddRoleRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :roles, foreign_key: true, index: false
  end
end
