class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :landing
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  private
    def after_sign_out_path_for(resource_or_scope)
    landing_path
  end

  def after_sign_up_path_for(resource)
    "/quiz" # <- Path you want to redirect the user to.
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
