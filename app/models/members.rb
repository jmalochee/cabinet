class Member < ApplicationController
  validates :name, presence: true
  validates :position, presence: true
  validates :type, presence:  true
end
