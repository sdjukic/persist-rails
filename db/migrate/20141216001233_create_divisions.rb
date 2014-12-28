class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.integer :level
      t.references :country, index: true

      t.timestamps
    end
  end
end
