class PricesController < ApplicationController
  def index
    @comments = Price.all.order("created_at DESC")
    @comment = Price.new
  end
  
  def create
    @comment = Price.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      render :index
    end
  end


  private
  def comment_params
    params.permit(:text, :image).merge(user_id: current_user.id)
  end
end
