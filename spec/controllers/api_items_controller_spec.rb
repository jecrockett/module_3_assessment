require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :controller do
  fixtures :items
  describe '#index' do
    it "returns all items" do
      get :index, format: :json

      items = JSON.parse(response.body)

      expect(response).to be_success
      expect(items.count).to eq 2
      expect(items.first.keys).to eq ["name", "description", "image_url"]
      # expect to see the name desc and image url but not timestamps
      # need to get serializers working to do this.
    end
  end

  describe '#show' do
    it "returns specified item" do
      get :show, format: :json, id: 1

      items = JSON.parse(response.body)

      expect(response).to be_success
      expect(items.keys).to eq ["name", "description", "image_url"]
    end
  end

  describe '#delete' do
    it "deletes the specified item" do
      get :index, format: :json
      items = JSON.parse(response.body)

      expect(items.count).to eq 2

      delete :destroy, format: :json, id:2

      expect(page.status_code).to eq 204

      get :index, format: :json
      items = JSON.parse(response.body)

      expect(items.count).to eq 1
    end
  end
end
