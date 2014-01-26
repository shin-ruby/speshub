# == Schema Information
#
# Table name: space_settings
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe SpaceSetting do
  let(:space_setting) {FactoryGirl.create(:space_setting)}

  subject { space_setting }

  it { should respond_to(:content) }

end
