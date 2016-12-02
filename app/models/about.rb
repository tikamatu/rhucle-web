class About < ActiveRecord::Base
  mount_uploader :photo, ArtworkUploader
end
