class ListingsController < ApplicationController

  def show
    @listings = Item.where(:user_id => current_user.id)
  end

  

  

end
