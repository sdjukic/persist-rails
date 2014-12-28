class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.text :name
      t.references :country, index: true
      t.references :division, index: true
      t.references :manager, index: true

      t.timestamps
    end
  end
end
