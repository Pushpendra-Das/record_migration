class CreateProvisions < ActiveRecord::Migration[6.0]
  def change
    suppress_messages do
      create_table :provisions do |t|
        t.string :name
        t.text :description
        t.timestamps
      end
    end
    say "Provision Table Created"

    suppress_messages {add_index :provisions, :name}
    say "and an index added!", true

    say_with_time 'Waiting for a response' do
      sleep 10
      250
    end
  end
end


# If you want Active Record to not output anything, then running bin/rails db:migrate
# VERBOSE=false will suppress all output.

