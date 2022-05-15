class ChangeProductsFirst < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :products do |t|
        dir.up   { t.change :first_name, :string }
        dir.down { t.change :first_name, :integer, using: 'CAST(first_name AS integer)' }
      end
    end
  end
end
