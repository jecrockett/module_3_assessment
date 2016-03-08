require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :controller do
  describe '#index' do
    get :index

    expect(response).to be_success
    binding.pry
  end
end
