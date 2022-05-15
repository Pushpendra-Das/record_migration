class ExampleMigration < ActiveRecord::Migration[6.0]
  def change
    create_table :distributors do |t|
      t.string :zipcode
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL 
          ALTER TABLE distributors add constraint zipchk 
          check (char_length(zipcode)=5) NO INHERIT; 
        SQL
      end
      dir.down do |dir|
        execute <<-SQL 
        ALTER TABLE distributors drop constraint zipchk
        SQL
      end
    end

    add_column :users, :home_page_url, :string
    rename_column :users, :email, :emai_address
  end
end