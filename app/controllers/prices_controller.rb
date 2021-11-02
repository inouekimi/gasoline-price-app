class PricesController < ApplicationController
  def index
    @comments = Price.all.order("created_at DESC")
    @comment = Price.new
  end
  
  def create
    comment = Price.new(comment_params)
    if comment.save
      redirect_to root_path
    else
      @comments = Price.all.order("created_at DESC")
      render :index
    end
  end

  def edit
    @comment = Price.find(params[:id])
  end

  def update
    @comment = Price.find(params[:id])
    if @comment.update(comment_params)
      redirect_to root_path
    end
  end

  def destroy
    comment = Price.find(params[:id])
    if comment.destroy
      redirect_to user_path(comment.user_id)
    end
  end


  private
  def comment_params
    params.require(:price).permit(:text, :image).merge(user_id: current_user.id)
  end
end
