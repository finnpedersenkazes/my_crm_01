class CreateThingEventRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :thing_event_relations do |t|
      t.string :active
      t.references :thing, foreign_key: true, index: true
      t.references :event, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
