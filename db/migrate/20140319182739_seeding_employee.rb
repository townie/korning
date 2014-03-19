class SeedingEmployee < ActiveRecord::Migration

  Sale.find_each do |sale|
    tmp = sale.employee.split(' ')

    # unless Employee.exists?({first_name: tmp[0], last_name: tmp[1], email: tmp[2]})
    #   Employee.create(first_name: tmp[0], last_name: tmp[1], email: tmp[2])
    #   puts "Employee #{sale.employee} was created"
    # else
    #   puts "Employee already exists"
    # end
    Employee.find_or_create_by({first_name: tmp[0], last_name: tmp[1], email: tmp[2]})
  end
end
