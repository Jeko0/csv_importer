class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index 
    @products = Product.all 
  end

  def import 
    return redirect_to root_path, notice: 'No file added' if params[:file].nil?
    return redirect_to root_path, notice: 'Only CSV files allowed' unless params[:file].content_type == 'text/csv'

    CsvImportService.new.call(params[:file])
    redirect_to products_path, notice: "Products uploaded"
  end
end