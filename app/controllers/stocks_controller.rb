class StocksController < ApplicationController

  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock.nil?
        flash[:alert] = "Please enter a valid symbol"
        redirect_to my_portfolio_path
      else
        render 'users/my_portfolio'
      end
    else
      flash[:alert] = "Please enter a symbol to search"
      redirect_to my_portfolio_path
    end
  end

end