class CreatePersonPlaceRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :person_place_relations do |t|
      t.string :active
      t.references :person, foreign_key: true, index: true
      t.references :place, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
