class SessionsController < ApplicationController
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
end
