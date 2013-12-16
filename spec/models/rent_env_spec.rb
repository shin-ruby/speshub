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
  before { @rent = RentEnv.new(content: "zone") }
  subject { @rent }

  it { should respond_to(:content)}

end
