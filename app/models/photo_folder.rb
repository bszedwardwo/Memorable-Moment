class PhotoFolder < ApplicationRecord
  belongs_to :folder
  belongs_to :photo
end
