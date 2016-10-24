class ProductsController < ApplicationController
  load_and_authorize_resource
  def index
    @catgories = Category.all
    @products = @products.all
  end

  def show
  end
end
