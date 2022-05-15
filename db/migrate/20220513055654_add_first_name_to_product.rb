class AddFirstNameToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :first_name, :integer
  end
end
