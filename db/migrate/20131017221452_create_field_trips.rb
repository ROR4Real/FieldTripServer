class CreateFieldTrips < ActiveRecord::Migration
  def change
    create_table :field_trips do |t|
      t.string :name
      t.references :school, index: true

      t.timestamps
    end
  end
end
