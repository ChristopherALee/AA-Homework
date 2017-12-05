# == Schema Information
#
# Table name: toys
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  toyable_type :string
#  toyable_id   :integer
#

class Toy < ApplicationRecord
  validates :name, uniqueness: { scope: [:toyable] }
  belongs_to :toyable, polymorphic: true

  
end
