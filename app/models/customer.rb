class Customer < ActiveRecord::Base
  has_many :sales_tables
  has_many :products, through: :sales_tables
  has_many :invoices, through: :sales_tables
end
