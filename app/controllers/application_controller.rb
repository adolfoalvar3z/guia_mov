class ApplicationController < ActionController::Base
  #app/controllers/application_controller.rb
before_action :configure_permitted_parameters, if: :devise_controller?
protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
    def after_sign_in_path_for(resource)
      home_path # esta es la ruta donde redireccionaremos en caso de
    end
end
