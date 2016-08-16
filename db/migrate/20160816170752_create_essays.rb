class CreateEssays < ActiveRecord::Migration[5.0]
  def change
    create_table :essays do |t|
      t.string :title
      t.string :publication
      t.integer :year
      t.string :publisher
      t.string :book_author

      t.timestamps
    end
  end
end
