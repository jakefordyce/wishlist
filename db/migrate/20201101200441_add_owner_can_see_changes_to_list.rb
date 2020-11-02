class AddOwnerCanSeeChangesToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :owner_can_participate, :boolean, null: false, default: :false
  end
end
