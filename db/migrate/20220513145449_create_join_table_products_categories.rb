class CreateJoinTableProductsCategories < ActiveRecord::Migration[6.0]
  def change
    create_join_table :products, :categories, column_options: {null:true}, table_name: :categorization
  end
end
