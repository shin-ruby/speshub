# == Schema Information
#
# Table name: spaces
#
#  id            :integer          not null, primary key
#  space_setting :string(255)
#  user_group    :string(255)
#  rent_env      :string(255)
#  num_of_people :string(255)
#  city          :string(255)
#  price_hour    :decimal(8, 2)    default(0.0)
#  price_day     :decimal(8, 2)    default(0.0)
#  price_month   :decimal(8, 2)    default(0.0)
#  price_year    :decimal(8, 2)    default(0.0)
#  title         :string(255)
#  content       :text
#  photo         :string(255)
#  detailed      :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Space < ActiveRecord::Base
  attr_accessible :city, :content, :detailed, :num_of_people, :photo, :price_day, :price_hour, :price_month, :price_year, :rent_env, :space_setting, :title, :user_group

  validates :space_setting, :user_group, :rent_env, :num_of_people, :city, :price_day, :price_month, :title, :content, presence: true
  validates :title, length: {maximum: 30 }



end
