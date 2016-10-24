class StaticPagesController < ApplicationController
  def home
    @catgories = Category.all
    @products = Product.all.take 9
  end
end
