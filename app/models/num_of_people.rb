# == Schema Information
#
# Table name: num_of_people
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NumOfPeople < ActiveRecord::Base
  attr_accessible :content
end
