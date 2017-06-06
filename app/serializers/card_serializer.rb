class CardSerializer < ActiveModel::Serializer
  attributes :card_type, :content, :source
  belongs_to :member
end
