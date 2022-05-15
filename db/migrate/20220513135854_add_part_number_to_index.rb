class AddPartNumberToIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :products, :part_number
    #Ex:- add_index("admin_users", "username")
  end
end
