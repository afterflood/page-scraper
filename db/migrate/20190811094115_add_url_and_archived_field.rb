class AddUrlAndArchivedField < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :image_url, :string
    add_column :messages, :archived, :boolean, default: false
  end
end
