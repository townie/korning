class ProductSale < ActiveRecord::Base
  has_many :sales_tables
  has_many :products
end
