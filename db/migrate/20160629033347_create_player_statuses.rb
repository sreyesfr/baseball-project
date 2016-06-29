class CreatePlayerStatuses < ActiveRecord::Migration
  def change
    create_table :player_statuses do |t|
      t.integer :player_id
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
