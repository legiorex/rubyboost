class ApplicationController < ActionController::Base
  def sign_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id].present?
  end
  helper_method :current_user

  def user_signed_in?
    current_user.present?
  end

  helper_method :user_signed_in?
end
