# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Blog, type: :model do
  describe 'Attribute definition' do
    it { is_expected.to respond_to(:id) }
    it { is_expected.to respond_to(:title) }
    it { is_expected.to respond_to(:body) }
    it { is_expected.to respond_to(:created_at) }
    it { is_expected.to respond_to(:updated_at) }
  end

  describe 'validates' do
    subject { blog }
    let(:blog) { create(:blog) }

    it { is_expected.to be_valid }

    describe 'title' do
      it 'Expect to require a title' do
        blog.title = ''
        is_expected.not_to be_valid
      end
    end

    describe 'body' do
      it 'Expect to require a body' do
        blog.body = ''
        is_expected.not_to be_valid
      end
    end
  end
end
