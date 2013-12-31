# == Schema Information
#
# Table name: detaileds
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sort       :string(255)
#

require 'spec_helper'

describe Detailed do
  before { @detailed = Detailed.new(content: "network" )}
  subject { @detailed }

  it { should respond_to(:content)}
end
