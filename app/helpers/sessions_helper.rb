module SessionsHelper
  def signed_in?
    !current_user.nil?
  end

  # Redirects user after signing in to page they were on before signing in
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end

  # How to use in other controller
  # def signed_in_user
  #   unless signed_in?
  #     store_location
  #     redirect_to signin_url, flash: { warning: "Please sign in" }
  #   end
  # end 
end
