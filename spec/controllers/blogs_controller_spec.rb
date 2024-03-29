require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe BlogsController, type: :controller do
  before { sign_in }

  # This should return the minimal set of attributes required to create a valid
  # Blog. As you add validations to Blog, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { title: 'title', body: 'body' }
  }

  let(:invalid_attributes) {
    { title: nil, body: nil }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BlogsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all blogs as @blogs' do
      blog = Blog.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:blogs)).to eq([blog])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested blog as @blog' do
      blog = Blog.create! valid_attributes
      get :show, params: { id: blog.to_param }, session: valid_session
      expect(assigns(:blog)).to eq(blog)
    end
  end

  describe 'GET #new' do
    it 'assigns a new blog as @blog' do
      get :new, params: {}, session: valid_session
      expect(assigns(:blog)).to be_a_new(Blog)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested blog as @blog' do
      blog = Blog.create! valid_attributes
      get :edit, params: { id: blog.to_param }, session: valid_session
      expect(assigns(:blog)).to eq(blog)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Blog' do
        expect {
          post :create, params: { blog: valid_attributes }, session: valid_session
        }.to change(Blog, :count).by(1)
      end

      it 'assigns a newly created blog as @blog' do
        post :create, params: { blog: valid_attributes }, session: valid_session
        expect(assigns(:blog)).to be_a(Blog)
        expect(assigns(:blog)).to be_persisted
      end

      it 'redirects to the created blog' do
        post :create, params: { blog: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Blog.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved blog as @blog' do
        post :create, params: { blog: invalid_attributes }, session: valid_session
        expect(assigns(:blog)).to be_a_new(Blog)
      end

      it "re-renders the 'new' template" do
        post :create, params: { blog: invalid_attributes }, session: valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) {
        { title: 'update title', body: 'update body' }
      }

      it 'updates the requested blog' do
        blog = Blog.create! valid_attributes
        put :update, params: { id: blog.to_param, blog: new_attributes }, session: valid_session
        blog.reload
        expect(blog.title).to eq 'update title'
        expect(blog.body).to eq 'update body'
      end

      it 'assigns the requested blog as @blog' do
        blog = Blog.create! valid_attributes
        put :update, params: { id: blog.to_param, blog: valid_attributes }, session: valid_session
        expect(assigns(:blog)).to eq(blog)
      end

      it 'redirects to the blog' do
        blog = Blog.create! valid_attributes
        put :update, params: { id: blog.to_param, blog: valid_attributes }, session: valid_session
        expect(response).to redirect_to(blog)
      end
    end

    context 'with invalid params' do
      it 'assigns the blog as @blog' do
        blog = Blog.create! valid_attributes
        put :update, params: { id: blog.to_param, blog: invalid_attributes }, session: valid_session
        expect(assigns(:blog)).to eq(blog)
      end

      it "re-renders the 'edit' template" do
        blog = Blog.create! valid_attributes
        put :update, params: { id: blog.to_param, blog: invalid_attributes }, session: valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested blog' do
      blog = Blog.create! valid_attributes
      expect {
        delete :destroy, params: { id: blog.to_param }, session: valid_session
      }.to change(Blog, :count).by(-1)
    end

    it 'redirects to the blogs list' do
      blog = Blog.create! valid_attributes
      delete :destroy, params: { id: blog.to_param }, session: valid_session
      expect(response).to redirect_to(blogs_url)
    end
  end
end
