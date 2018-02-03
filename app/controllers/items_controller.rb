class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy] 

  def search
    if params[:search].present?
      @items = Item.search params[:search], fields: [:item_name, :category], match: :word_start
    else
      @items = Item.all
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to item_path(@item)
      flash[:notice] = 'Congratulations you have successfully listed an item.'
    else
      render 'new'
      flash[:alert] = 'Error.'
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
