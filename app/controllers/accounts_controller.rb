class AccountsController < ApplicationController
  before_action :find_user

  def new
    @account = @user.build_account
  end

  def create
    @account = @user.build_account(account_params)
    if @account.save
      redirect_to root_path
      flash[:notice] = "Your account information has been saved."
    else
      flash[:error] = "Error."
      render 'new'
    end
  end

  def show
    # @account = @user.account
    if @user.account.present? 
    redirect_to edit_user_account_path(@user)
    else 
    redirect_to new_user_account_path(@user)
    end
  end

  def edit
    @account = @user.account
  end

  def update
    @account = @user.account
    if @account.update(account_params)
    flash[:notice] = 'Your account information was successfully updated.'
    redirect_to root_path
    else
      render 'edit'
    end 
  end




  private
  def account_params
    params.require(:account).permit(
      :name,
      :email,
      :location,
      :telephone,
      :your_bio,
      :avatar_img)
  end

  def find_user
    @user = User.find(params[:user_id])
  end
  
end
