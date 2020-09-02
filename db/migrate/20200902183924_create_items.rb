class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :list_id
      t.string :name
      t.text :url
      t.text :instructions
      t.boolean :purchased
      t.boolean :hidden_from_owner

      t.timestamps
    end
  end
end
