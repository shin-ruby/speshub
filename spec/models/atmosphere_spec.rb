# == Schema Information
#
# Table name: atmospheres
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Atmosphere do
  let(:atmosphere) { FactoryGirl.create(:atmosphere) }

  subject { atmosphere }

  it { should respond_to(:content)}
end
