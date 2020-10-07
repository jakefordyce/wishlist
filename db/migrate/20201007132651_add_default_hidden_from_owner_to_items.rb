class AddDefaultHiddenFromOwnerToItems < ActiveRecord::Migration[5.2]
  def change
    change_column_default :items, :hidden_from_owner, false
  end
end
