# == Schema Information
#
# Table name: rent_envs
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe RentEnv do
  let(:rent_env) {FactoryGirl.create(:rent_env)}
  subject { rent_env }

  it { should respond_to(:content)}

end
