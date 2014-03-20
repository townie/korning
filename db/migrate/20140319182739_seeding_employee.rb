class SeedingEmployee < ActiveRecord::Migration

  Sale.find_each do |sale|
    tmp = sale.employee.split(' ')

    Employee.find_or_create_by({first_name: tmp[0], last_name: tmp[1], email: tmp[2]})
  end
end
