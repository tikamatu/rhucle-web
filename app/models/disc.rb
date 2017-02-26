# == Schema Information
#
# Table name: discs
#
#  id            :integer          not null, primary key
#  title         :string(255)      not null
#  artist        :text(65535)      not null
#  released_on   :date             not null
#  record_label  :string(255)      not null
#  catalog       :text(65535)
#  artworked_by  :string(255)      not null
#  format        :text(65535)      not null
#  url           :text(65535)      not null
#  listening_url :text(65535)
#  artwork_thumb :string(255)      not null
#  artwork_full  :string(255)
#  track_list    :text(65535)      not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Disc < ActiveRecord::Base
  mount_uploader :artwork_thumb, ArtworkUploader
  mount_uploader :artwork_full, ArtworkUploader

  validates :title, presence: true
  validates :artist, presence: true
  validates :released_on, presence: true
  validates :record_label, presence: true
  validates :artworked_by, presence: true
  validates :format, presence: true
  validates :url, presence: true
  validates :artwork_thumb, presence: true
  validates :track_list, presence: true
end
