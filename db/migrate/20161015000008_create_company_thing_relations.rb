class CreateCompanyThingRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :company_thing_relations do |t|
t.string :acquired_date
t.string :disposed_date
t.string :active
t.references :company, foreign_key: true, index: true
t.references :thing, foreign_key: true, index: true
t.timestamps null: false
    end
  end
end
