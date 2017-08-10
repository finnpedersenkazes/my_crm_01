class CreatePersonThingRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :person_thing_relations do |t|
      t.string :active
      t.references :person, foreign_key: true, index: true
      t.references :thing, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
