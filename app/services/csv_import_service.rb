class CsvImportService
  require 'csv'

  def call(file)
    begin
      opened_file = File.open(file)
      options = { headers: true, col_sep: ';' }
      CSV.foreach(opened_file, **options) do |row|
        product_hash = {}
        product_hash[:name] = row[:Name]
        product_hash[:description] = row[:Description]
        product_hash[:quantity] = row[:Quantity]
        product_hash[:price] = row[:Price]
        byebug
        Product.create(product_hash)
      end
    rescue CSV::MalformedCSVError => e 
      e.message
    end
  end
end