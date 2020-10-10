class CreateCollabRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :collab_requests do |t|
      t.integer :user_id, null: false
      t.integer :list_id, null: false
      t.boolean :from_owner, null: false
      t.timestamps
    end
  end
end
