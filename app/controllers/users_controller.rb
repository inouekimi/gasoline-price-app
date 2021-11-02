class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @comments = @user.prices.all.order("created_at DESC")
  end
end


