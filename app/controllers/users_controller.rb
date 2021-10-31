class UsersController < ApplicationController
  def show
    @nickname = User.find(params[:id])
    @comments = @nickname.prices
  end
end


