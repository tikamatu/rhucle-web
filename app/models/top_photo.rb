# == Schema Information
#
# Table name: top_photos
#
#  id         :integer          not null, primary key
#  order      :integer          not null
#  active     :boolean          default(TRUE), not null
#  url        :string(255)
#  photo      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TopPhoto < ActiveRecord::Base
  mount_uploader :photo, ArtworkUploader

  validates :order, presence: true
  validates :photo, presence: true
end
