# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe City do
  let(:city) { FactoryGirl.create(:city)}

  subject { city }

  it { should respond_to(:content)}
end
