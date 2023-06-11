class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: %i[show  destroy]

  def index 
    @q = Product.ransack(params[:q])
    @q.sorts = 'id asc' if @q.sorts.empty?
    @products = @q.result(distinct: true)

    if params[:q].present? && params[:q][:price_gteq].present?
      min_price = params[:q][:price_gteq]
      @products = @products.where('price >= ?', min_price)
    end
  
    if params[:q].present? && params[:q][:price_lteq].present?
      max_price = params[:q][:price_lteq]
      @products = @products.where('price <= ?', max_price)
    end
    
    @products = @products.paginate(page: params[:page], per_page: 3)
  end

  def show 

  end

  def import 
    file =  params[:file]
    return redirect_to root_path, alert: 'Please add file' if file.nil?
    return redirect_to root_path, alert: 'Please select only csv file' unless file.content_type == 'text/csv'

    csv = CsvImportService.new(file)
    csv.call

    redirect_to products_path, notice: "Products uploaded"
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: "Product deleted successfully"
  end

  private 

  def set_product
    @product = Product.find(params[:id])
  end
end