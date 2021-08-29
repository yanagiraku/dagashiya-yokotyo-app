class ProductsController < ApplicationController
  def index
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



  private
  def product_params
    params.require(:product).permit(:image, :product_name, :company_id, :description, :category_id, :flavour_id, :package_type_id, :unicent_price_id)
  end
end
