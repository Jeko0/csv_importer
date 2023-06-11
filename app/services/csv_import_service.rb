class CsvImportService
  require 'csv'

  def initialize(file)
    @file = file
  end

  def call
    CSV.foreach(@file.path, headers: true) do |row|
      product_hash = {}
      product_hash[:id] = row['ID']
      product_hash[:name] = row['Name']
      product_hash[:description] = row["Description"]
      product_hash[:quantity] = row['Quantity']
      product_hash[:price] = row['Price']
      Product.create!(product_hash)
    end
  end
end