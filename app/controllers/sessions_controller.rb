class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(depto: params[:session][:depto].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid depto/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
