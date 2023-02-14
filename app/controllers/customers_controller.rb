class CustomersController < ApplicationController
  before_action :set_customers, only: %i[  destroy update  ]

  def index
    @secretMenuItem = SecretMenuItem.find(params[:secret_menu_item_id])
    @customer = @secretMenuItem.customers
    render json: @customer
  end

  def show
    @secretMenuItem = SecretMenuItem.find(params[:secret_menu_item_id])
    @customer = @secretMenuItem.customers.find(params[:id])
    if @customer 
      render json: @customer
    else 
      render json: {error: "not found"}
    end
  end

  def create
    @secretMenuItem = SecretMenuItem.find(params[:secret_menu_item_id])
    @customer = @secretMenuItem.customers.create(customer_params)
    if @customer.save
      render json: @customer
    else 
      render json: {error: "Not created"}
    end
  
  end

  def update
    
    @customer.update(customer_params)
    render json: @customer
  end

  def destroy
    # @secretMenuItems = SecretMenuItem.all
    
    @customer.destroy
    render json: @customer
  end

  private
  
  def set_customers
    @customer = Customer.find(params[:id])
  end

  
  def customer_params
    params.require(:customer).permit(:name, :sel_foods,:quantity)
  end

end
