class CreateCustomer < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.integer :customer_number
    end
  end
end
