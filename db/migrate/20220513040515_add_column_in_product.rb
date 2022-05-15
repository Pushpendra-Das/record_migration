class AddColumnInProduct < ActiveRecord::Migration[6.0]
  def change
    change_table :products do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
