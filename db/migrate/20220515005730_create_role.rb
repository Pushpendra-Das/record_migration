class CreateRole < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :user_role
      t.text :descrp
    end
  end
end
