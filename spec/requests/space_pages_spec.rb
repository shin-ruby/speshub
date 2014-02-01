require 'spec_helper'

describe "SpacePages" do
  subject {page}

  describe "list space pages" do
    before { visit spaces_path }

    it { should have_selector('title', title: full_title('list')) }
  end

  describe "show space page" do
    let(:space) { FactoryGirl.create(:space) }
    let(:space_setting) { FactoryGirl.create(:space_setting)}
    let(:user_group) { FactoryGirl.create(:user_group)}
    let(:rent_env) { FactoryGirl.create(:rent_env)}
    let(:num_of_people) { FactoryGirl.create(:num_of_people)}
    let(:city) { FactoryGirl.create(:city)}
    let(:atmosphere) { FactoryGirl.create(:atmosphere)}

    before { visit space_path(space) }

    it { should have_selector('h3', text: space.title)}
    it { should have_selector('h4', text: city.content)}
  end

  describe "create space pages" do
    before { visit new_space_path }

    it { should have_content('房源类型') }
  end

  describe "Create space" do
    before { visit new_space_path }
    let(:submit) { "Create new space" }

    describe "with invalid information" do
      it "should not create a space" do
        expect { click_button submit }.not_to change(Space, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "space_setting_id",     with: 1
        fill_in "user_group_id",        with: 1
        fill_in "rent_env_id",          with: 1
        fill_in "num_of_people_id",     with: 1
        fill_in "city_id",              with: 1
        fill_in "atmosphere_id",        with: 1
        fill_in "price_hour",           with: "10"
        fill_in "price_day",            with: "48"
        fill_in "price_month",          with: "1200"
        fill_in "price_year",           with: "10000"
        fill_in "title",                with: "创智天地"
        fill_in "content",              with: "五角场商圈创业园区，敬请光临"
        fill_in "photo",                with: "wujiaochang.jpg"
        fill_in "detailed",             with: "1,0,1,1,1,1,1,1,1,1,1,1,1,1,1"
        fill_in "rule",                 with: "守则"
      end
      it "should create a space" do
        expect { click_button submit }.to change(Space, :count).by(1)
      end
    end

  end

end
