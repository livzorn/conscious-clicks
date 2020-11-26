class ChangeImageToNameInBookmarks < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookmarks, :image, :name
  end
end
