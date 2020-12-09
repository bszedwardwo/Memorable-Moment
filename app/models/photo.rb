class Photo < ApplicationRecord
  belongs_to :user
  has_many :folders, through: :photo_folders
  has_many :tags, through: :photo_tags
  has_one :comment
  has_one_attached :image

  validates :image, presence: true
end
