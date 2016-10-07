class AddLinkToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :link, :string
  end
end
