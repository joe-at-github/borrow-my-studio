class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy] 

  def new
    @item = Item.new
  end

  def create
    @item = Item.create!(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to item_path(@item)
      flash[:notice] = 'Congratulations you have successfully listed an item.'
    else
      render 'new'
      flash[:notice] = 'Error.'
    end
  end

  def show
  end



  private
  def item_params
    params.require(:item).permit(
      :item_name,
      :description,
      :daily_price,
      :weekly_price,
      :category,
      :user_id,
      {images: []})
  end

  def find_item
    @item = Item.find(params[:id])
  end

end
