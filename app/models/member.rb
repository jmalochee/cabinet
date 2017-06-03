class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position, presence: true
  validates :about, presence: true
  validates :image, presence: true
end
