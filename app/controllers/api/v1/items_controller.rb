class Api::V1::ItemsController < Api::ApiController
  respond_to :json

  def index
    respond_with Item.all
  end

  def show
    respond_with Item.find(params[:id])
  end

  def destroy
    item = Item.find(params[:id])
    item.delete
    respond_with status: 204
  end

  def create
    item = Item.create(item_params)
    if item.save
      respond_with Item.find(item.id), status: 201
    else
      respond_with status: 404
    end
  end

  private

    def item_params
      params.permit(:name, :description, :image_url)
    end


end
