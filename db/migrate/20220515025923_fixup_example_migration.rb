require_relative "20220515024213_example_migration"
class FixupExampleMigration < ActiveRecord::Migration[6.0]
  def change
    revert ExampleMigration 
    create_table :apples do |t|
      t.string :variety
    end
  end
end
You can use Active Record's ability to rollback migrations using the revert method:

