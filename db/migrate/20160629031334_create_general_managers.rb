class CreateGeneralManagers < ActiveRecord::Migration
  def change
    create_table :general_managers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :team_id
      t.text :notes
      t.boolean :active

      t.timestamps null: false
    end
  end
end
