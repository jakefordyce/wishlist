class AddPrivateToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :private, :boolean, null: false, default: false
  end
end
