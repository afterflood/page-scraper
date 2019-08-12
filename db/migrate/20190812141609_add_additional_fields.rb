class AddAdditionalFields < ActiveRecord::Migration[6.0]
  def change
    create_table :streams do |t|
      t.string :fb_id
      t.string :created_time
      t.references :page, null: false, foreign_key: true
    end

    add_column :pages, :page_uuid, :string
    add_column :pages, :token, :string
  end
end
