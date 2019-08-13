class AddMoreFieldsToStream < ActiveRecord::Migration[6.0]
  def change
    add_column :streams, :archived, :boolean, default: false
    add_column :streams, :story, :string
  end
end
