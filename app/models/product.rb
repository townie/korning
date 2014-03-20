class Product < ActiveRecord::Base
    has_many :product_sales
    has_many :sales_tables, through: :product_sale
end
