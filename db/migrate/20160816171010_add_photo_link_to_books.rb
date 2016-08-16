class AddPhotoLinkToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :photo_link, :string
  end
end
