class GoodsController < ApplicationController
  before_action :set_user

  def new
    @good = Good.new
  end

  def create
    @good = Good.new(goods_params)
    if @good.save
      redirect_to root_path
    else
      redirect_to new_good_path
    end
  end

  private

  def goods_params
    params[:good].permit(:name, :price, :live_id)
  end
end
