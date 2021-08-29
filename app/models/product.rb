class Product < ApplicationRecord
  has_one_attached :image


  with_options presence: true do
    validates :product_name
    validates :description
  end

  with_options numericality: { other_than: 1 } do
    validates :company_id
    validates :category_id
    validates :flavour_id
    validates :package_type_id
    validates :unicent_price_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :company
  belongs_to_active_hash :flavour
  belongs_to_active_hash :package_type
  belongs_to_active_hash :unicent_price
end
