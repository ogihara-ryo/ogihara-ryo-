require 'rails_helper'

RSpec.describe 'Blogs', type: :request do
  describe 'Need authentication' do
    subject { response }

    describe 'GET /blogs/new' do
      before { get new_blog_path }
      it { is_expected.to have_http_status(302) }
    end

    describe 'POST /blogs' do
      before { post blogs_path }
      it { is_expected.to have_http_status(302) }
    end

    describe 'GET /blogs/:id/edit' do
      before { get edit_blog_path(create(:blog)) }
      it { is_expected.to have_http_status(302) }
    end

    describe 'PATCH /blogs/:id' do
      before { patch blog_path(create(:blog)) }
      it { is_expected.to have_http_status(302) }
    end

    describe 'PUT /blogs/:id' do
      before { put blog_path(create(:blog)) }
      it { is_expected.to have_http_status(302) }
    end

    describe 'DELETE /blogs/:id' do
      before { delete blog_path(create(:blog)) }
      it { is_expected.to have_http_status(302) }
    end
  end
end
