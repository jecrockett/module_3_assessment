require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :controller do
  describe '#index' do
    it "returns all items" do
      get :index, format: :json

      expect(response).to be_success
      # expect to see the name desc and image url but not timestamps
      # need to get serializers working to do this.
    end
  end

  describe 'show' do
    it "returns specified item" do
      get :show, format: :json
      response = JSON.parse(response.body)

      expect(response).to be_success
    end
  end
end
