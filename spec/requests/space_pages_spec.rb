require 'spec_helper'

describe "SpacePages" do
  subject {page}

  describe "list space pages" do
    before { visit spaces_path }

    it { should have_selector('title', title: full_title('list')) }
  end

  describe "show space page" do
    #let(:space) { FactoryGirl.create(:space) }
    #let(:space_setting_show_one) { FactoryGirl.create(:space_setting) }
    #before { visit space_path(space) }

    before do
      @space = Space.create(
          space_setting:  "1",
          user_group:     "1",
          rent_env:       "1",
          num_of_people:  "1",
          city:           "上海",
          price_hour:     "0",
          price_day:      "48",
          price_month:    "1200",
          price_year:     "10000",
          title:          "创智天地",
          content:        "五角场商圈创业园区，敬请光临",
          photo:          "wujiaochang.jpg",
          detailed:       "1,2,3,4,6,7")

      @space_setting_show_one = SpaceSetting.create(
          content: "创意园区"
      )
      @user_group_show_one = UserGroup.create(
          content: "设计类"
      )
      @rent_env_show_one = RentEnv.create(
          content: "办公位"
      )
      @num_of_people_show_one = NumOfPeople.create(
          content: "1"
      )
      visit space_path(@space)
    end


    it { should have_selector('h3', text: @space.title)}
    it { should have_selector('h4', text: @space.city)}
  end

  describe "create space pages" do
    before { visit new_space_path }

    it { should have_content('房源类型') }

  end
end
