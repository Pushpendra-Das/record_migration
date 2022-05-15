class AddPartNumberAndUpccodeToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :part_number, :text
    add_column :products, :upccode, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
