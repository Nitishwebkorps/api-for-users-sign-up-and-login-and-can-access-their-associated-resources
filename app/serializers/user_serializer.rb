class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :address, :email, :created_at
  has_many :secret_menu_items
  
end
