class AddSecretMenuItemsIdToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :secret_menu_item_id, :integer
  end
end
