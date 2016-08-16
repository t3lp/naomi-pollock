class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.string :publication
      t.date :date
      t.string :link
      t.text :text

      t.timestamps
    end
  end
end
