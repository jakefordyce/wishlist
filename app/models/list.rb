class List < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :comments
  has_many :collaborations, class_name: "Collaboration", foreign_key: "collab_id"
  has_many :collaborators, class_name: 'User', through: :collaborations
  has_many :collab_requests
end
