class EmployeesController < ApplicationController


  def index

    @employees = Employee.all

  end


  def show

    # get '/employees/:id' do
    #    @employee = Employee.find(params[:id])
    # end



    # /employees/1
    @employee = Employee.find(params[:id])
  end
end
