class Invoice < ActiveRecord::Base
  belongs_to :sales_table
  has_many :products, through: :product_sales
end
