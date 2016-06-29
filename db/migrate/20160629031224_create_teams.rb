class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :abreviation
      t.string :city
      t.string :state
      t.integer :salary_cap

      t.timestamps null: false
    end
  end
end
