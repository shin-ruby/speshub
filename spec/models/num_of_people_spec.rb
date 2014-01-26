# == Schema Information
#
# Table name: num_of_people
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe NumOfPeople do
  let(:num_of_people) { FactoryGirl.create(:num_of_people)}

  subject { num_of_people }

  it { should respond_to(:content) }
end
