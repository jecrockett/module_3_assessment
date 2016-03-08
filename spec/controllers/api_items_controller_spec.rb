require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :controller do
  describe '#index' do
    it "returns all items" do
      get :index, format: :json

      expect(response).to be_success
    end
  end
end
