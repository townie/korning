class ProductsController < ApplicationController


  def show_all

    @products = Product.all

  end


  def show

    # get '/employees/:id' do
    #    @employee = Employee.find(params[:id])
    # end



    # /employees/1
    @Product = Product.find(params[:id])
  end
end
