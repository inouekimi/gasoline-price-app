class PricesController < ApplicationController
  def index
    @comments = Price.all
    @comment = Price.new
  end
  
  def create
    @comment = Price.new(comment_params)
    if @comment.save
      # もし入力したデータがsaveできたら
      redirect_to root_path
      # 更新してトップページへ戻る
    else
      # saveできなかったら
      render :index
      # ビューのitem/newを表示する
    end
  end

  private
  def comment_params
    params.permit(:text).merge(user_id: current_user.id)
  end

end
