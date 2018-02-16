class ListingsController < ApplicationController

  def show
    if current_user.items.blank?
      redirect_to new_item_path
      flash[:alert] = 'You do not have any items yet. You can list some here.'
    else
      @listings = Item.where(:user_id => current_user.id)
    end
  end

end
