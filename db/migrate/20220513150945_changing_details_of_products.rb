class ChangingDetailsOfProducts < ActiveRecord::Migration[6.0]
  def change
    change_table :products do |t|
      t.remove :description, :name
      t.string :part_number
      t.index :part_number
      t.rename :upccode, :upc_code
    end
  end
end
