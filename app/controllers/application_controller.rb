class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "hola, empezaste bien!"

  end

end
