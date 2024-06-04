require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before(:each) do
      @category = Category.create(name: "Test Category")
    end

    it 'is valid with valid attributes' do
      product = Product.new(name: "Test Product", price: 100, quantity: 10, category: @category)
      expect(product).to be_valid
    end

    it 'is not valid without a name' do
      product = Product.new(name: nil, price: 100, quantity: 10, category: @category)
      expect(product).not_to be_valid
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    it 'is not valid without a price' do
      product = Product.new(name: "Test Product", price: nil, quantity: 10, category: @category)
      product.valid? # Trigger validations
      puts "Errors: #{product.errors.full_messages}"
      puts "Price cents: #{product.price_cents.inspect}"
      expect(product.errors.full_messages).to include("Price can't be blank")
    end

    it 'is not valid without a quantity' do
      product = Product.new(name: "Test Product", price: 100, quantity: nil, category: @category)
      expect(product).not_to be_valid
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'is not valid without a category' do
      product = Product.new(name: "Test Product", price: 100, quantity: 10, category: nil)
      expect(product).not_to be_valid
      expect(product.errors.full_messages).to include("Category can't be blank")
    end
  end
end
