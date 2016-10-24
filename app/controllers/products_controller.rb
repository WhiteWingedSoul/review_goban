class ProductsController < ApplicationController
  load_and_authorize_resource
  def index
    @catgories = Category.all
    @products = Product.display.take 9
  end

  def show
    @comment = @product.comments.new
  	@comments = @product.comments.page(params[:page]).per 10
  end
end
