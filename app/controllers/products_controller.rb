class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @product = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @product = Product.where(params[:id])
    @product = Product.find(params[:id])
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product.id)
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to root_path
    else
      render :show
    end
  end




  def snack
    @product1 = Product.where(category_id:2)
  end

  def chocolate
    @product2 = Product.where(category_id:3)
  end

  def candy
    @product3 = Product.where(category_id:4)
  end

  def jello
    @product4 = Product.where(category_id:5)
  end

  def pan
    @product5 = Product.where(category_id:6)
  end

  def delicacy
    @product6 = Product.where(category_id:7)
  end




  private
  def product_params
    params.require(:product).permit(:image, :product_name, :company_id, :description, :category_id, :flavour_id, :package_type_id, :unicent_price_id)
  end


  def set_product
    @product = Product.find(params[:id])
  end

end
