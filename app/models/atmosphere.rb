# == Schema Information
#
# Table name: atmospheres
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Atmosphere < ActiveRecord::Base
  attr_accessible :content

  has_many :spaces
end
