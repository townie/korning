class SeedingProductSales < ActiveRecord::Migration
  def up

    remove_column :product_sales, :sale_id
    add_column :product_sales, :sale_table_id, :integer


    Sale.find_each do |sale|
      ProductSale.find_or_create_by({
                                      product_id: (Product.find_by(name: sale.product_name).id),
                                      sale_table_id:  sale.id,
                                      sold_price: (sale.sale_amount),
                                      quantity: sale.units_sold
        })
    end
  end

  def down
    remove_column :product_sales, :sale_table_id
    add_column :product_sales, :sale_id, :integer



  end

end
