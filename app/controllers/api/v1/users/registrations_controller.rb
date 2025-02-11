class Api::V1::Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    private
  
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  
    def respond_with(resource, _opts = {})
      render json: { message: 'Signed up successfully', user: resource }, status: :ok
    end
  end
  