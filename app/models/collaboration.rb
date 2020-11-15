class Collaboration < ApplicationRecord
  belongs_to :collaborator, class_name: "User"
  belongs_to :collab, class_name: "List"
  validates_uniqueness_of :collaborator_id, scope: :collab_id
end
