require 'rails_helper'

RSpec.describe Product, type: :model do
  it "product is valid" do
    product = FactoryBot.build(:product)
  
    expect(product). to be_valid
  end

end
