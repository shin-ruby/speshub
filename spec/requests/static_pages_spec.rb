require 'spec_helper'

describe "StaticPages" do

  describe "Home pages" do
    it "should have the content 'SpesHub'" do
      visit '/static_pages/home'
      page.should have_content('SpesHub')
    end

    it "should have the title 'home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'SpesHub|home')
    end
  end
end