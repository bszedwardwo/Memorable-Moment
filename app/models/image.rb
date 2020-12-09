class Image < ApplicationRecord
  belongs_to :user
  has_many :folders, through: :image_folders
  has_many :tags, through: :image_tags
  has_one :comment
end
