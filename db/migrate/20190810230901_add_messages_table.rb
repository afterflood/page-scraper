class AddMessagesTable < ActiveRecord::Migration[6.0]
  def change

    create_table :pages do |t|
      t.string :name
      t.string :url

      t.timestamps
    end


    create_table :messages do |t|
      t.string :message
      t.references :page, null: false, foreign_key: true

      t.timestamps
    end
  end
end
