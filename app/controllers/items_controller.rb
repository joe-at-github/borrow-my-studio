class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy] 

  def new
    @item = Item.new
  end

  def create
    # binding.pry
    @item = Item.create!(item_params)
    @item.user_id = current_user.id
    @item.location = current_user.account.location
    @item.owner = current_user.account.name
    if @item.save
      redirect_to item_path(@item)
      flash[:success] = 'Congratulations you have successfully listed an item.'
    else
      render 'new'
      flash[:error] = 'Error.'
    end
  end

  def show
    @item = Item.find(params[:id])
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
