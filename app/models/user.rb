class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lists
  has_many :comments
  has_many :collaborations, class_name: "Collaboration", foreign_key: "collaborator_id"
  has_many :collabs, class_name: 'List', through: :collaborations
  has_many :purchased, class_name: 'Item', foreign_key: 'purchaser_id'
  has_many :collab_requests

  validates :username, presence: true
end
