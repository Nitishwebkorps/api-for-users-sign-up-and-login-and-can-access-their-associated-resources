class SecretMenuItemsController < ApplicationController
  before_action :set_items, only: %i[ show destroy update  ]

  def index
    @secretMenuItems = SecretMenuItem.all
    render json: @secretMenuItems
  end

  def show
    render json: @secretMenuItem
  end

  def create
    @secretMenuItem = SecretMenuItem.new(secret_menu_item_params)
    if @secretMenuItem.save
      render json: @secretMenuItem
    else 
      render json: {error: "Not created"}
    end
  end

  def update
    
    @secretMenuItem.update(secret_menu_item_params)
    render json: @secretMenuItem
  end

  def destroy
    # @secretMenuItems = SecretMenuItem.all
    
    @secretMenuItem.destroy
    render json: @secretMenuItems
  end

  private
  
  def set_items
    @secretMenuItem = SecretMenuItem.find(params[:id])
  end

  
  def secret_menu_item_params
    params.require(:secret_menu_item).permit(:menu_name, :resturent_name,:menu_description)
  end

end