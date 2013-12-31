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

require 'spec_helper'

describe Space do
  before do
    @space = Space.new(
              space_setting: "1",
              user_group: "1",
              rent_env: "1",
              num_of_people: "1",
              city: "shanghai",
              price_hour: 4.8,
              price_day: 48,
              price_month: 1200,
              price_year: 12000,
              title: "GDS Data Center",
              content: "Hello Word!",
              photo: "gds.jpg",
              detailed: "1,2,3,4,6,7")
  end

  subject { @space }

  it { should respond_to(:city) }
  it { should respond_to(:space_setting) }

  it { should be_valid }
  describe "something is not present" do
    before { @space.space_setting = " " }
    it { should_not be_valid }
  end
  describe "price_hour is not present" do
    before { @space.price_hour = " " }
    it { should be_valid }
  end

  describe "when title is too long" do
    before { @space.title = "a" * 31 }
    it { should_not be_valid }
  end



end
