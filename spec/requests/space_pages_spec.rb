require 'spec_helper'

describe "SpacePages" do
  subject {page}

  describe "list space pages" do
    before { visit list_path }

    it { should have_selector('title', title: full_title('list')) }
  end

  describe "show space page" do
    before { visit show_path }

    it { should have_content('预约看空间') }
  end

  describe "create space pages" do
    before { visit new_path }

    it { should have_content('房源类型') }

  end
end
