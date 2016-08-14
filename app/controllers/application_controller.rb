class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  private

  def sign_in_required
    return if signed_in?
    set_request_from
    redirect_to sign_in_path
  end

  def set_request_from
    session[:request_from] = request.fullpath
  end
end
