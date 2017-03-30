# == Schema Information
#
# Table name: visual_arts
#
#  id          :integer          not null, primary key
#  image       :string(255)      not null
#  designed_at :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class VisualArt < ActiveRecord::Base
  mount_uploader :image, ArtworkUploader

  validates :image, presence: true
  validates :designed_at, presence: true
end
