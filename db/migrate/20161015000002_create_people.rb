class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
t.string :name
t.string :description
t.string :active
t.timestamps null: false
    end
  end
end
