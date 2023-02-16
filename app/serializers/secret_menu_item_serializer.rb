class SecretMenuItemSerializer < ActiveModel::Serializer
  attributes :id, :menu_name, :resturent_name, :menu_description, :created_at, :customers 
  
  def customers
    object.customers
  end
  
  
end
