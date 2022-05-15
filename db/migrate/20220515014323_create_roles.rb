class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :user_role
      t.text :descrip

      t.timestamps
    end
  end
end
