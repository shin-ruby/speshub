# == Schema Information
#
# Table name: user_groups
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserGroup < ActiveRecord::Base
  attr_accessible :content

  has_many :spaces
end
