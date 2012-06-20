class CreateFieldTrips < ActiveRecord::Migration
  def change
    create_table :field_trips do |t|
      t.string :name
      t.references :school

      t.timestamps
    end
    add_index :field_trips, :school_id
  end
end
