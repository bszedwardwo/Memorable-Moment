class Folder < ApplicationRecord
  belongs_to :user
  has_many :photo_folders
  has_many :photos, through: :photo_folders
  has_many :tags, through: :folder_tags

  validates :name, presence: true
end
