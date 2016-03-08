class Api::V1::ItemsController < Api::ApiController
  respond_to :json

  def index
    respond_with Item.all
  end

  def show
    binding.pry
    respond_with Item.find(params[:id])
  end


end
