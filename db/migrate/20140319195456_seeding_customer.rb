class SeedingCustomer < ActiveRecord::Migration

  # Sale.find_each do |sale|

  #     Product.find_or_create_by(name: sale.product_name)
  #  end
  def up
      remove_column :customers, :URL
      add_column :customers, :url, :string

    Sale.find_each do |sale|

      tmp = sale.customer_and_account_no.split(' ')

      tmp[1] = tmp[1].gsub(/[()]/,'')

      Customer.find_or_create_by({ name: tmp[0], account_no: tmp[1]})
      puts tmp[1]
    end

  end

  def down
    remove_column :customers, :url
    add_column :customers, :URL, :string

  end
end
