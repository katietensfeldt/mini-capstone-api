class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :inventory, :is_discounted?, :tax, :total, :supplier, :images
end
