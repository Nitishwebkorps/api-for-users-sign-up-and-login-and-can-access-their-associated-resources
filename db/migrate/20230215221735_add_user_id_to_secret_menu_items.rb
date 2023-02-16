class AddUserIdToSecretMenuItems < ActiveRecord::Migration[7.0]
  def change
    add_column :secret_menu_items, :user_id, :integer
  end
end
