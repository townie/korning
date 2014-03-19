class SeedingEmployee < ActiveRecord::Migration

  Sale.all.find_each do |sale|
    tmp = sale.employee.split(' ')

    unless Employee.exists?({first_name: tmp[0], last_name: tmp[1], email: tmp[2]})
      Employee.create(first_name: tmp[0], last_name: tmp[1], email: tmp[2])
      puts "Employee #{sale.employee} was created"
    else
      puts "Employee already exists"
    end
  end
end
