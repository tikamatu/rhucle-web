class VisualArt < ActiveRecord::Base
  mount_uploader :image, ArtworkUploader

  validates :image, presence: true
end
