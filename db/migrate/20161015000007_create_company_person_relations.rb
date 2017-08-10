class CreateCompanyPersonRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :company_person_relations do |t|
      t.string :start_date
      t.string :end_date
      t.string :job_function
      t.string :active
      t.references :company, foreign_key: true, index: true
      t.references :person, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
