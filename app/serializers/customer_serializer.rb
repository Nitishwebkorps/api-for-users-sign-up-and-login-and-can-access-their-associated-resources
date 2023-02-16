class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :sel_foods, :quantity, :created_at
end
