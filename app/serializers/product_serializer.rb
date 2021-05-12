class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image_url, :inventory, :is_discounted?, :tax, :total
end
