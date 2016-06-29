class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :team_id
      t.text :notes
      t.boolean :active

      t.timestamps null: false
    end
  end
end
