require 'rails_helper'

RSpec.describe DashboardController, type: :controller do

  login_user

  describe "Before Action Authenticate User" do
    it { should use_before_action(:authenticate_user!) } 
  end

  describe "Get Dashboard Index" do
    before { get :index }
    it { should respond_with(200) }
  end

end
