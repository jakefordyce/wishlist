class Collaboration < ApplicationRecord
  belongs_to :collaborator, class_name: "User"
  belongs_to :collab, class_name: "List"
end
