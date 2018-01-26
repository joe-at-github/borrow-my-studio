class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy] 

  def new
    @item = Item.new
  end

  def create
    @item = Item.create!(item_params)
    @item.user_id = current_user.id
    @item.location = current_user.account.location
    @item.owner = current_user.account.name
    if @item.save
      redirect_to item_path(@item)
      flash[:notice] = 'Congratulations you have successfully listed an item.'
    else
      render 'new'
      flash[:error] = 'Error.'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end


  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
      flash[:notice] = "Item has been updated."
    else
      render 'edit'
    end
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
      :location,
      :owner,
      {images: []})
  end

  def find_item
    @item = Item.find(params[:id])
  end

end
