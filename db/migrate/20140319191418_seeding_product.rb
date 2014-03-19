class SeedingProduct < ActiveRecord::Migration

  def up
    remove_column :products, :price
  end

  def down
    add_column :products, :price, :decimal

  end


  Sale.find_each do |sale|

      Product.find_or_create_by(name: sale.product_name)
   end

end
