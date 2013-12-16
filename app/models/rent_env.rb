# == Schema Information
#
# Table name: rent_envs
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RentEnv < ActiveRecord::Base
  attr_accessible :content
end
