class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.date :date_posted
      t.time :time_posted
      t.text :content

      t.timestamps null: false
    end
  end
end
