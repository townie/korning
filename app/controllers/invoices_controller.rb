class InvoicesController < ApplicationController

  def show_all

    @invoices = Invoice.all

  end


  def show
    # /employees/:id
    # /employees/1
    @invoice = Invoice.find(params[:id])
  end
end
