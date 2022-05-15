class DontUseConstraintForZipCodeValidationMigration < ActiveRecord::Migration[6.0]
  # def change
  #   revert do
  #     create_table :distributors do |t|
  #       t.string :zipcode
  #     end
  #     reversible do |dir|
  #       dir.up do
  #         execute <<-SQL
  #           ALTER TABLE distributors ADD CONSTRAINT zipchk CHECK (char_length(zipcode) = 5);
  #         SQL
  #       end
  #       dir.down do
  #         execute <<-SQL
  #           ALTER TABLE distributors DROP CONSTRAINT zipchk
  #         SQL
  #       end
  #     end
  #   end
  # end
  #Not working giving issue
end
