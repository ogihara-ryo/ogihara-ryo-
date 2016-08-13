module SessionsHelper
  def sign_in
    session[:signed_in] = true
  end

  def authenticated?(password)
    password == ENV['ADMIN_PASSWORD']
  end

  def signed_in?
    session[:signed_in].present?
  end

  def sign_out
    session[:signed_in] = nil
  end
end
