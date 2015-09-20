class DiscoBox < ActiveRecord::Base
  mount_uploader :jacket, JacketUploader
end
