class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  # def hello
  #   render html: "hola, empezaste bien! Continúa"
  # end

end
