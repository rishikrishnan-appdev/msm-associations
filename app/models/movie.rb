# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string
#  year        :string
#  duration    :integer
#  description :text
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#

class Movie < ApplicationRecord
    validates :director_id, :title, presence: true
    validates :title, uniqueness: { scope: :year }
    validates :year, numericality: { only_integer: true, greater_than: 1870, less_than: 2050  }
    validates :duration, numericality: { only_integer: true, greater_than: 0, less_than: 2764800, allow_blank: true }
end
