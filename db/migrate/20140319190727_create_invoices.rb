class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :invoice_no, null: false
      t.integer :sale_id, null: false
      t.decimal :amout_due, null: false

      t.timestamps
    end
  end
end
