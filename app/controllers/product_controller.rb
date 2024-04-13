class ProductController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.page(params[:page]).per(10)
  end

  def show
    @product = Product.find(params[:id])
  end
end