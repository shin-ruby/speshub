# == Schema Information
#
# Table name: spaces
#
#  id               :integer          not null, primary key
#  space_setting_id :integer
#  user_group_id    :integer
#  rent_env_id      :integer
#  num_of_people_id :integer
#  city_id          :integer
#  price_hour       :decimal(8, 2)    default(0.0)
#  price_day        :decimal(8, 2)    default(0.0)
#  price_month      :decimal(8, 2)    default(0.0)
#  price_year       :decimal(8, 2)    default(0.0)
#  title            :string(255)
#  content          :text
#  photo            :string(255)
#  detailed         :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  rule             :text
#  atmosphere_id    :integer
#

class Space < ActiveRecord::Base
  attr_accessible :city_id, :content, :detailed, :num_of_people_id, :photo, :price_day, :price_hour, :atmosphere_id,
                  :price_month, :price_year, :rent_env_id, :space_setting_id, :title, :user_group_id, :rule

  validates :space_setting_id, :user_group_id, :rent_env_id, :num_of_people_id, :city_id, :atmosphere_id,
            :price_day, :price_month, :title, :content, presence: true
  validates :title, length: {maximum: 30 }

  belongs_to :space_setting
  belongs_to :user_group
  belongs_to :rent_env
  belongs_to :num_of_people
  belongs_to :city
  belongs_to :atmosphere



end
