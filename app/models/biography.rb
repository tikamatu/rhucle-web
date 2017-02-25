# == Schema Information
#
# Table name: biographies
#
#  id         :integer          not null, primary key
#  photo      :string(255)
#  profile    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Biography < ActiveRecord::Base
  mount_uploader :photo, ArtworkUploader
end
