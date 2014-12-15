class SessionsController < ApplicationController
  def new
  end
  def create
  	user = User.find_by(name: params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		redirect_to user 
  	else
  		flash.now[:danger] = "Invalid username/password combination"
  	    # Create an error message
  	    render 'new'
  	end
  end
  def destroy
  end
end
