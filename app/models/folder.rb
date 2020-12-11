class Folder < ApplicationRecord
  belongs_to :user
  has_many :photos, through: :photo_folders
  has_many :tags, through: :folder_tags
end
