class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    has_contact_info = User.find_by(current_user.id)
    # If logged in
    if !has_contact_info.nil?
      # If they were looking at a page before being forced to sign in
      if !session[:return_to].nil?
        # Return to the page
        session[:return_to]
        # Delete the back page log
        session.delete[:return_to]
      else
        edit_user_path(current_user.id)
      end
    else
      edit_user_path(current_user.id)
    end
  end

  # Permits custom attributes to be verified
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
  end
end
