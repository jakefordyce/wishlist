class AddDefaultPurchasedToItems < ActiveRecord::Migration[5.2]
  def change
    change_column_default :items, :purchased, false
    change_column_null :items, :purchased, false, false
  end
end
