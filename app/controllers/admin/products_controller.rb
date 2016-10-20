class Admin::ProductsController < ApplicationController
  load_and_authorize_resource
  def index
    @products = Product.all.page(params[:page]).
      per 10
  end

  def show
  end

  def new
    @product_images = @product.product_images.build
  end

  def create
    @product = Product.new product_params
    @product.user = current_user
    # byebug
    if @product.save
      unless params[:product_images].nil?
        params[:product_images][:image].each do |a|
          @product_image = @product.product_images.create!(image: a)
        end
      end
      flash[:success] = t "message.new_product_successful"
      redirect_to admin_products_path
    else
      render "new"
    end
  end
  
  def edit
  end

  def update
    if @product.update_attributes product_params
      flash[:success] = t "message.edit_product_successful"
      redirect_to admin_products_path
    else
      render "edit"
    end
  end

  
  def destroy
    if @product.destroy
      flash[:success] = t "message.delete_product_successful"
      redirect_to admin_products_path
    else
      flash[:success] = t "message.delete_product_unsuccessful"
      redirect_to admin_products_path
    end
  end

  private
  def product_params
    params.require(:product).permit :name, :category_id, :description, :detail, :price,
      :promotion, :is_display, :image, pictures: []
  end
end
