# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  dob        :string
#  name       :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Director < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: { scope: :dob }
end
