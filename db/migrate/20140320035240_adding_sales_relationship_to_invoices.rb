class AddingSalesRelationshipToInvoices < ActiveRecord::Migration
  def up

    remove_column :invoices, :sale_id
    add_column :invoices, :sales_table_id, :string
    # remove_column :invoices, :invoice_no
    # add_column :invoices, :invoice_no, :string


    Invoice.all.find_each do |invoice|
        invoice.sales_table_id = (SalesTable.find_by(id: invoice.id).id)
        invoice.save
    end

  end

  def down
    add_column :invoices,:sale_id, :string, null: false
    remove_column :invoices, :sales_table_id
    #  remove_column :invoices, :sale_id
    # add_column :invoices, :sales_table_id, :string
    # remove_column :invoices, :invoice_no
    # add_column :invoices, :invoice_no, :string
  end

end
