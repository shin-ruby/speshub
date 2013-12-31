# == Schema Information
#
# Table name: detaileds
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sort       :string(255)
#

class Detailed < ActiveRecord::Base
  attr_accessible :content, :sort
end
