class CreateCompanyPlaceRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :company_place_relations do |t|
t.string :active
t.references :company, foreign_key: true, index: true
t.references :place, foreign_key: true, index: true
t.timestamps null: false
    end
  end
end
