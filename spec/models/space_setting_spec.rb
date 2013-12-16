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
  before { @spacesetting = SpaceSetting.new(content: "rooms")}
  subject { @spacesetting }

  it { should respond_to(:content) }

end
