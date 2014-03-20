class SalesTable < ActiveRecord::Base
  belongs_to :employee
  belongs_to :customer
  has_many :products, through: :product_sales

end
