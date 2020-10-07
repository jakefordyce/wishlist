class AddNotNullHiddenFromOwnerToItems < ActiveRecord::Migration[5.2]
  def change
    Item.where(hidden_from_owner: nil).update_all(hidden_from_owner: false)
    change_column_null :items, :hidden_from_owner, false
  end
end
