class CreateSalesTables < ActiveRecord::Migration
  def change
    create_table :sales_tables do |t|
      t.date :sale_date, null: false
      t.decimal :sale_amount, null: false
      t.integer :units_sold, null: false
      t.string :invoice_frequency, null: false
      t.integer :employee_id, null: false
      t.integer :customer_id, null: false

      t.timestamps
    end
  end
end
