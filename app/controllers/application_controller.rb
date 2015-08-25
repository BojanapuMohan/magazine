class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  
  


  def after_sign_in_path_for(resource_or_scope)
      
          welcome_dashboard_path
          
  end

  private

    def configure_devise_permitted_parameters
      registration_params = [:name, :email, :reset_password_token, :remember_me,:password,:password_confirmation] #:role
      
                if params[:action] == 'update'
                  devise_parameter_sanitizer.for(:account_update) { 
                    |u| u.permit(registration_params << :current_password )
                   
                  }
                   else params[:action] == 'create'
                    devise_parameter_sanitizer.for(:sign_up) { 
                    |u| u.permit(registration_params) 
                     
                  }
                end
      end
end
