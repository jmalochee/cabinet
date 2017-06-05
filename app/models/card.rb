class Card < ApplicationRecord
  validates :type, presence: true
  validates :card_name, presence: true

  belongs_to :member
end
