class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      t.string :title
      t.string :institution
      t.date :date
      t.string :link
      t.text :description
      t.integer :year

      t.timestamps
    end
  end
end
