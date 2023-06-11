require 'rails_helper'

RSpec.describe Product, type: :model do
  context "Validations" do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:quantity) }
    it { should validate_presence_of(:price) }
  end

  describe 'ransackable_attributes' do
    it 'returns the expected ransackable attributes' do
      expect(Product.ransackable_attributes).to contain_exactly('id', 'name', 'price', 'quantity')
    end
  end
end
