class SessionController < ApplicationController
  def new
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      flash[:success] = "Login success"
      log_in user
      redirect_to user
    else
      flash[:danger] = "Invalid username/password combination!"
      render :new
    end
  end

  def destroy
  end
end
