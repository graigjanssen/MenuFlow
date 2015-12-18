require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'Users#log_in' do
    it 'should render the log in view' do
      get :log_in
      expect(response).to render_template(:log_in)
    end
  end
end
