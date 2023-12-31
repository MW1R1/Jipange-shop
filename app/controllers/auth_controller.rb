# app/controllers/auth_controller.rb

class AuthController < ApplicationController
    def register
      user = User.new(user_params)
  
      if user.save
        render json: { message: 'User created successfully' }, status: :created
      else
        render json: { error: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def login
      user = User.find_by(email: params[:email])
  
      if user&.authenticate(params[:password])
        token = encode_token({ user_id: user.id })
        render json: { token: token }, status: :ok
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    private
  
    def user_params
      params.permit(:name, :email, :password, :password_confirmation)
    end
  end
  