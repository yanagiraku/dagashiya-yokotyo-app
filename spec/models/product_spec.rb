require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @product = FactoryBot.build(:product)
  end

  describe "商品登録機能" do
    context "商品登録ができる" do
      it "image、product_name、description、category_id、company_id、flavour_id、package_type_id、unicent_price_idが存在すれば登録できる" do
        expect(@product).to be_valid
      end
    end

    context "商品登録ができない" do
      # it "ユーザー情報がない場合は登録できない" do
      #   @product.user = nil
      #   @product.valid?
      #   expect(@product.errors.full_messages).to include("User must exist")
      # end
      it "imageが空では登録できない" do
        @product.image = nil
        @product.valid?
        expect(@product.errors.full_messages).to include("Image can't be blank")
      end
      it "product_nameが空では登録できない" do
        @product.product_name = ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Product name can't be blank")
      end
      it "descriptionが空では登録できない" do
        @product.description = ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Description can't be blank")
      end
      it "category_idが未選択では登録できない" do
        @product.category_id = 1
        @product.valid?
        expect(@product.errors.full_messages).to include("Category must be other than 1")
      end
      it "company_idが未選択では登録できない" do
        @product.category_id = 1
        @product.valid?
        expect(@product.errors.full_messages).to include("Category must be other than 1")
      end
      it "flavour_idが未選択では登録できない" do
        @product.company_id = 1
        @product.valid?
        expect(@product.errors.full_messages).to include("Company must be other than 1")
      end
      it "package_type_idが未選択では登録できない" do
        @product.package_type_id = 1
        @product.valid?
        expect(@product.errors.full_messages).to include("Package type must be other than 1")
      end
      it "unicent_price_idが未選択では登録できない" do
        @product.unicent_price_id = 1
        @product.valid?
        expect(@product.errors.full_messages).to include("Unicent price must be other than 1")
      end
    end
  end
end
