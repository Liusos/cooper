class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(depto: params[:session][:depto].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      if current_user.stat.nil?
        redirect_to stats_path #ruta personalizada
      elsif current_user.stat.svo_6.nil? #evalua si se contesto hasta el último atributo
        redirect_to edit_stat_stat_step_path(current_user.stat.id, "basic_info")
      else
        redirect_back_or user
      end
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
