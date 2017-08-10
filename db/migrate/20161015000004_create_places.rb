class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
t.string :name
t.string :description
t.string :address
t.string :lattitude
t.string :longitude
t.string :altitude
t.timestamps null: false
    end
  end
end
