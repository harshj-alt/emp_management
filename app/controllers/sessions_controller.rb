class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:sessions][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
    flash[:success] = "you have successfully logged in"
    redirect_to student_path(users)
    
    else
      flash.now[:danger] = "username or password is incorrect"
      render 'new'
    end
  end
  def destroy
  end
end