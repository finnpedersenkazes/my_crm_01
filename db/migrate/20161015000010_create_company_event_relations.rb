class CreateCompanyEventRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :company_event_relations do |t|
t.string :active
t.references :company, foreign_key: true, index: true
t.references :event, foreign_key: true, index: true
t.timestamps null: false
    end
  end
end
