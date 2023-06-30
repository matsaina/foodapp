class SessionsController < ApplicationController
  def create 
    user = User.find_by(:username params[:username] )
    if user && user.authenticate(params[:password])
      render json: user, status: :created
    else
      render json: {error: 'Unauthorized username and password'}, status: :unprocessabl_entity
  end
end

  def destroy 
    session.delete(:user_id)
    head :no_content
    render json: {message: 'Successfully logged out'}
  end




end
