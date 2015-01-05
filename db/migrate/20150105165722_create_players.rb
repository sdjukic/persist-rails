class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :team_id
      t.integer :stamina
      t.integer :goalkeeping
      t.integer :playmaking
      t.integer :passing
      t.integer :wing
      t.integer :defending
      t.integer :scoring
      t.integer :set_pieces

      t.timestamps
    end
  end
end
