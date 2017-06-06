class MemberSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name
  has_many :cards
end
