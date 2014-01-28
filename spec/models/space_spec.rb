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

require 'spec_helper'

describe Space do
  let(:space) { FactoryGirl.create(:space) }

  subject { space }

  it { should respond_to(:city_id) }
  it { should respond_to(:space_setting_id) }

  it { should be_valid }
  describe "something is not present" do
    before { space.space_setting_id = " " }
    it { should_not be_valid }
  end
  describe "price_hour is not present" do
    before { space.price_hour = " " }
    it { should be_valid }
  end

  describe "when title is too long" do
    before { space.title = "a" * 31 }
    it { should_not be_valid }
  end



end
