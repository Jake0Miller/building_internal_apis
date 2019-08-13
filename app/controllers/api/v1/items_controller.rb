class Api::V1::ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]
  def show
    render json: @item
  end

  def index
    render json: Item.all
  end

  def create
    Item.create(item_params)
  end

  def update
    @item.update(item_params)
  end

  def destroy
    @item.destroy
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description)
  end
end
