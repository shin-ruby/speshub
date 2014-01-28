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
end
