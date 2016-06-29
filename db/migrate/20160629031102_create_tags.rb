class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :player_id
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
