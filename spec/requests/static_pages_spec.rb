require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home pages" do
    before { visit root_path }

    it { should have_content('SpesHub') }

    it { should have_selector('title', text: full_title('home')) }
  end

end