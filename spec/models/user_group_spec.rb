# == Schema Information
#
# Table name: user_groups
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe UserGroup do
  before { @user_group = UserGroup.new(content: "design")}
  subject { @user_group }

  it { should respond_to(:content)}
end
