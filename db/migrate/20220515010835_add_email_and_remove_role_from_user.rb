class AddEmailAndRemoveRoleFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :role, :string
    add_column :users, :email, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
