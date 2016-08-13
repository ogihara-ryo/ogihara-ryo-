class SessionsController < ApplicationController
  include SessionsHelper

  before_action :signin_required
  skip_before_action :signin_required

  def new
    redirect_to root_path if signed_in?
  end

  def create
    if authenticated?(session_param[:password])
      sign_in
      redirect_back_or(root_path)
    else
      render action: :new
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  private

  def session_param
    params.require(:session).permit(:password)
  end

  def redirect_back_or(default)
    redirect_to(session[:request_from] || default)
    session[:request_from] = nil
  end

  def signin_required
    return if signed_in?
    set_request_from
    redirect_to sign_in_path
  end

  def set_request_from
    session[:request_from] = request.fullpath
  end
end
