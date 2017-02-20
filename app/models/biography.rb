class Biography < ActiveRecord::Base
  mount_uploader :photo, ArtworkUploader
end
