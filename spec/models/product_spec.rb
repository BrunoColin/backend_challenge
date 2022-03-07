require 'rails_helper'

RSpec.describe Product, type: :model do
  it "product is valid" do
    product = FactoryBot.build(:product, :valid)
  
    expect(product). to be_valid
  end

  it "product title is not null" do
    product = FactoryBot.build(:product, :valid)
  
    expect(product.title). to_not be_nil
  end

  it "product title length is not min" do
    product = FactoryBot.build(:product, :valid)
  
    product.title.length.should be > 3 
  end

  it "product title length is not max" do
    product = FactoryBot.build(:product, :valid)
  
    product.title.length.should be < 128 
  end

  it "product description not null" do
    product = FactoryBot.build(:product, :valid)
  
    expect(product.description). to_not be_nil
  end

  it "product description length is not min" do
    product = FactoryBot.build(:product, :valid)
  
    product.description.length.should be > 10
  end

  it "product description length is not max" do
    product = FactoryBot.build(:product, :valid)
  
    product.description.length.should be < 500 
  end

  it "product value not null" do
    product = FactoryBot.build(:product, :valid)
  
    expect(product.value). to_not be_nil
  end

  it "product value is greater than 0" do
    product = FactoryBot.build(:product, :valid)
  
    product.value.should be > 0
  end

  it "product image not null" do
    product = FactoryBot.build(:product, :valid)
  
    expect(product.image). to_not be_nil
  end

  it "product is invalid" do
    product = FactoryBot.build(:product, :invalid)
  
    expect(product). to_not be_valid
  end

  it "product title is null" do
    product = FactoryBot.build(:product, :invalid)
  
    expect(product.title). to be_nil
  end

  it "product title length is min" do
    product = FactoryBot.build(:product, :invalidMin)
  
    product.title.length.should be < 3 
  end

  it "product title length is max" do
    product = FactoryBot.build(:product, :invalidMax)
  
    product.title.length.should be > 128 
  end

  it "product description is null" do
    product = FactoryBot.build(:product, :invalid)
  
    expect(product.description). to be_nil
  end

  it "product description length is min" do
    product = FactoryBot.build(:product, :invalidMin)
  
    product.description.length.should be < 10
  end

  it "product description length is max" do
    product = FactoryBot.build(:product, :invalidMax)
  
    product.description.length.should be > 500 
  end

  it "product value is null" do
    product = FactoryBot.build(:product, :invalid)
  
    expect(product.value). to be_nil
  end

  it "product value is not greater than 0" do
    product = FactoryBot.build(:product, :invalidMin)
  
    product.value.should be <= 0
  end

  it "product image is null" do
    product = FactoryBot.build(:product, :invalid)
  
    expect(product.image). to be_nil
  end


end
