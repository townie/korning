class SalesTableSeeding < ActiveRecord::Migration
  def up

      Sale.find_each do |sale|

        SalesTable.find_or_create_by({sale_date: sale.sale_date,
                                      sale_amount: sale.sale_amount,
                                        units_sold: sale.units_sold,
                                       invoice_frequency: sale.invoice_frequency,
                                      employee_id: (Employee.find_by(email: sale.employee.split(' ').last ).id ),
                                      customer_id: (Customer.find_by(name: sale.customer_and_account_no.split(' ').first ).id )
                                      })


      end

  end

  def down

  end


end
