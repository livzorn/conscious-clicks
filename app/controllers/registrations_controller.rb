class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_up_path_for(resource)
   quiz_path
  end

  def after_sign_out_path_for(resource_or_scope)
   landing_path
  end
end
