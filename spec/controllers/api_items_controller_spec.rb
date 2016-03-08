require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :controller do
  fixtures :items
  describe '#index' do
    it "returns all items" do
      get :index, format: :json

      items = JSON.parse(response.body)

      expect(response).to be_success
      expect(items.count).to eq 2
      # expect to see the name desc and image url but not timestamps
      # need to get serializers working to do this.
    end
  end

  describe 'show' do
    it "returns specified item" do
      get :show, format: :json, id: 1

      items = JSON.parse(response.body)

      expect(response).to be_success
      expect(items.count).to eq 1
    end
  end
end
