# == Schema Information
#
# Table name: toys
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  toyable_type :string
#  toyable_id   :integer
#

require 'test_helper'

class ToyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
