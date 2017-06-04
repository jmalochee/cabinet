class Card < ApplicationRecord
  validates :type, presence: true
end
