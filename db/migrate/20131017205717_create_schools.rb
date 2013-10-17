class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :board
      t.string :category
      t.string :school_type
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :grades
      t.boolean :ecs

      t.timestamps
    end
  end
end
