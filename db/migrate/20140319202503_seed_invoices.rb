class SeedInvoices < ActiveRecord::Migration
  def up

    remove_column :invoices, :sale_id
    add_column :invoices, :sale_id, :integer
     remove_column :invoices, :amout_due
    add_column :invoices, :amount_due, :integer


    Sale.find_each do |sale|
        Invoice.find_or_create_by(amount_due: sale.sale_amount, invoice_no: sale.invoice_no )
    end
  end

  def down
    remove_column :invoices, :sale_id
    add_column :invoices, :sale_id, :integer
     remove_column :invoices, :amount_due
    add_column :invoices, :amout_due, :integer
  end

end
