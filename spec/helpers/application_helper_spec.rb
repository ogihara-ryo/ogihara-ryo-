require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#page_title' do
    context 'when passed title' do
      it { expect(page_title('Title')).to eq("Title | #{OgiharaRyo::Application.config.title}") }
    end

    context 'when not passed title' do
      it { expect(page_title).to eq(OgiharaRyo::Application.config.title) }
    end
  end
end
