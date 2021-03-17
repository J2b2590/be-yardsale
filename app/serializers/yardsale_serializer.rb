class YardsaleSerializer < ActiveModel::Serializer
  attributes :id, :streetAddress, :zipcode
  belongs_to :user
  has_many :items

end
