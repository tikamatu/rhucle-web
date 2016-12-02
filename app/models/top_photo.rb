class TopPhoto < ActiveRecord::Base
  mount_uploader :photo, ArtworkUploader

  validates :order, presence: true
  validates :photo, presence: true
end
