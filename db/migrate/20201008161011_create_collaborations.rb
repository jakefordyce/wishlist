class CreateCollaborations < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborations do |t|
      t.integer :collaborator_id, null: false
      t.integer :collab_id, null: false
      t.timestamps
    end
  end
end
