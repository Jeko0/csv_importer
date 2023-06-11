RSpec.describe CsvImportService do
  describe '#call' do
  let(:file) { fixture_file_upload('MOCK_DATA.csv', 'text/csv') }

    it 'creates products from CSV data' do
      service = CsvImportService.new(file)

      expect {
        service.call
      }.to change(Product, :count).by(6)
    end
  end
end