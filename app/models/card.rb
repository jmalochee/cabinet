class Card < ApplicationRecord
  validates :card_type, presence: true
  validates :card_name, presence: true

  belongs_to :member
end
