class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.text :first_name
      t.text :last_name

      t.timestamps
    end
  end
end
