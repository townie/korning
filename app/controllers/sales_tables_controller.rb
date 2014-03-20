class SalesTablesController < ApplicationController


  def show_all

    @sales_tables = SalesTable.all

  end


  def show

    # get '/employees/:id' do
    #    @employee = Employee.find(params[:id])
    # end



    # /employees/1
    @sales_table = SalesTable.find(params[:id])
  end
end
