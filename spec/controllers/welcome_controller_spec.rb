require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe 'Welcome#index' do
    it 'should render welcome index' do
      get :index
      expect(response).to render_template(:index)
    end
  end

end
