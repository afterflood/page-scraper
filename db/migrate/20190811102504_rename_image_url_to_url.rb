class RenameImageUrlToUrl < ActiveRecord::Migration[6.0]
  def change
    rename_column :messages, :image_url, :url
  end
end
