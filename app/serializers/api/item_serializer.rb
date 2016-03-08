class Api::V1::ItemSerializer < ActiveModel::Serializer
  attributes :name, :description, :image_url
end
