class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :sub_title
      t.string :full_title
      t.integer :year
      t.string :contributors
      t.string :publisher
      t.string :pages
      t.integer :height
      t.integer :width
      t.string :language
      t.text :description
      t.string :amazon_link

      t.timestamps
    end
  end
end
