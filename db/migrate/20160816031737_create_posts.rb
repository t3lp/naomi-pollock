class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.date :date
      t.string :author
      t.string :category

      t.timestamps
    end
  end
end
