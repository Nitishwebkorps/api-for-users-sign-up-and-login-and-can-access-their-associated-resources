# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  respond_to :json

  def create
    
    @user = User.new(params.require(:user).permit(:full_name, :address, :email, :password))
   
    if @user.save
      render json: @user
    else 
      render json: {message: "Not created", errors: resource.errors.full_messages}
    end
  
  end

  private

  def respond_with(resource, options={})
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'Signed up successfully', data: resource }
      }, status: :ok
    else
      render json: {
        status: { message: 'User could not be created successfull', errors: resource.errors.full_messages }, status: :unprocessable_entity
      }
    end
  end

end
