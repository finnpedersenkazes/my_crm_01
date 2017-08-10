class CreatePlaceEventRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :place_event_relations do |t|
      t.string :active
      t.references :place, foreign_key: true, index: true
      t.references :event, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
