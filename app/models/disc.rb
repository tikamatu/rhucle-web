class Disc < ActiveRecord::Base
  mount_uploader :artwork, ArtworkUploader

  validates :title, presence: true
  validates :format, presence: true
end
