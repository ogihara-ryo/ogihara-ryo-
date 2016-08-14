require 'rails_helper'

RSpec.describe WelcomeController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/').to route_to('welcome#index')
    end

    it 'routes to #profile' do
      expect(get: '/profile').to route_to('welcome#profile')
    end

    it 'routes to #tech' do
      expect(get: '/tech').to route_to('welcome#tech')
    end
  end
end
