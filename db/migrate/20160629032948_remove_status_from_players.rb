class RemoveStatusFromPlayers < ActiveRecord::Migration
  def change
  	remove_column :players, :status, :string
  end
end
