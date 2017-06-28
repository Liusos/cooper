class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(depto: params[:session][:depto].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      if current_user.stat.nil? #buscar una mejor forma de evaluar la instancia, pues un dato es suficiente para hacela !nil
        redirect_to stats_path #ruta personalizada

        else
#nos quedamos aquí y en el sanbox de la consola para probar los modelos.
      #!NEWusaremos un condicional embebido en otro condicional.
      #en esta parte continua la implementación, pero en realidad esto es lo que opera primero
      #evaluar si el current_user tiene 'nil' su instanci Stat aplicar la condición correspondiente según su estado
      #nil?
      #En esta parte comienzan preguntas. callbacks? me pregunto
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
