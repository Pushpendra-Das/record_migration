class ChangeProductsPrice < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :products do |t|
        dir.up   { t.change :name, :string }
        dir.down { t.change :name, :integer }
      end
    end
  end
end
