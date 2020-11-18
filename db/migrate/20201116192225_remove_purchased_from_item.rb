class RemovePurchasedFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :purchased, :boolean
  end
end
