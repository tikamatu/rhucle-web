# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  started_on :datetime         not null
#  detail     :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ActiveRecord::Base
  validates :started_on, presence: true
  validates :detail, presence: true
end
