require 'rails_helper'

RSpec.describe MainController, type: :controller do

  describe 'index' do
    it 'responds with status code success.' do
      expect(get :index).to be_successful
    end
  end

  describe 'create' do
    it 'raises NameError for using `root` instead of `root_path`.' do
      expect { post :create }.to raise_exception(NameError, /\Aundefined local variable or method `root'/)
    end
  end

end
