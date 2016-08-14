require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  subject { response }

  describe 'GET #new' do
    context 'with not siggned in' do
      before do
        sign_out
        get :new
      end
      it { is_expected.to have_http_status(:success) }
    end

    context 'with signed in' do
      before do
        sign_in
        get :new
      end
      it { is_expected.to redirect_to root_path }
    end
  end

  describe 'POST #create' do
    context 'with valid password' do
      before do
        sign_out
        post :create, params: { session: { password: ENV['ADMIN_PASSWORD'] } }
      end
      it { is_expected.to redirect_to root_path }
      it { expect(controller.view_context.signed_in?).to be_truthy }
    end

    context 'with invalid password' do
      before { post :create, params: { session: { password: 'invalid_password' } } }
      it { is_expected.not_to redirect_to root_path }
      it { is_expected.to render_template :new }
    end
  end

  describe 'DELETE #destroy' do
    before { delete :destroy }
    it { is_expected.to redirect_to root_path }
  end
end
