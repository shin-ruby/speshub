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
  before { @num = NumOfPeople.new(content: "1") }
  subject ( @num )

  it { should respond_to(:content) }
end
