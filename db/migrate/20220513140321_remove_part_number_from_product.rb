class RemovePartNumberFromProduct < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :part_number, :string
  end
end
